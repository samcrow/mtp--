#include "mtpdevice.hpp"

//Set up static members
bool MTPDevice::libmtpInitialized = false;
boost::mutex MTPDevice::initMutex;



void MTPDevice::dumpDeviceInfo() {
    LIBMTP_Dump_Device_Info(deviceStruct);
}

void MTPDevice::reset() {
    LIBMTP_Reset_Device(deviceStruct);
}

std::string MTPDevice::getManufacturerName() {
    /*
      Complicated system for dealing with C memory
      These functions return a char*. The program must first
      make a std::string copy of it, then free it, then return
      the std::string.
      */
    char * ret = LIBMTP_Get_Manufacturername(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

std::string MTPDevice::getModelName() {
    char * ret = LIBMTP_Get_Modelname(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

std::string MTPDevice::getSerialNumber() {
    char * ret = LIBMTP_Get_Serialnumber(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

std::string MTPDevice::getVersion() {
    char * ret = LIBMTP_Get_Deviceversion(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

std::string MTPDevice::getFriendlyName() {
    char * ret = LIBMTP_Get_Friendlyname(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

bool MTPDevice::setFriendlyName(std::string name) {
    int ret = LIBMTP_Set_Friendlyname(deviceStruct, name.c_str());
    //return true for 0, otherwise false
    return ret == 0;
}

std::string MTPDevice::getSyncPartner() {
    char * ret = LIBMTP_Get_Syncpartner(deviceStruct);
    std::string rString = ret;
    free(ret);
    return rString;
}

bool MTPDevice::setSyncPartner(std::string partner) {
    int ret = LIBMTP_Set_Syncpartner(deviceStruct, partner.c_str());
    return ret == 0;
}


double MTPDevice::getBatteryLevel() {
    uint8_t max, actual;

    int ret = LIBMTP_Get_Batterylevel(deviceStruct, &max, &actual);

    //return 0 on failure
    if(ret != 0) {
        return 0;
    }

    //Check that max is not zero. Return failure if it is.
    if(max == 0) {
        return 0;
    }

    //return the proportion
    return actual / max;

}

std::string MTPDevice::getSecureTime() {
    char * buffer;
    int ret = LIBMTP_Get_Secure_Time(deviceStruct, &buffer);

    if(buffer == NULL) {
        return "";
    }
    if(ret != 0) {
        free(buffer);
        return "";
    }

    std::string sBuffer = buffer;
    free(buffer);
    return sBuffer;
}

std::string MTPDevice::getCertificate() {
    char * buffer;
    int ret = LIBMTP_Get_Device_Certificate(deviceStruct, &buffer);

    if(buffer == NULL) {
        return "";
    }
    if(ret != 0) {
        free(buffer);
        return "";
    }

    std::string sBuffer = buffer;
    free(buffer);
    return sBuffer;
}

void MTPDevice::dumpErrorStack() {
    LIBMTP_Dump_Errorstack(deviceStruct);
}

void MTPDevice::clearErrorStack() {
    LIBMTP_Clear_Errorstack(deviceStruct);
}


std::vector<MTPDevice *> * MTPDevice::getConnectedDevices() {

    //If necessary, initialize libmtp
    initMutex.lock();
    if(!libmtpInitialized) {
        LIBMTP_Init();
        libmtpInitialized = true;
    }
    initMutex.unlock();

    std::vector<MTPDevice *> * deviceList = new std::vector<MTPDevice *>();

    LIBMTP_mtpdevice_t * devices;

    LIBMTP_error_number_t error = LIBMTP_Get_Connected_Devices(&devices);
    if(error == LIBMTP_ERROR_NONE) {
        //Iterate through the devices and add each to the list
        for(LIBMTP_mtpdevice_t *iterator = devices; iterator; iterator = iterator->next) {

            //Create a new MTPDevice and add it to the data structure
            deviceList->push_back(new MTPDevice(iterator));
        }
    }

    return deviceList;
}

MTPDevice::MTPDevice(LIBMTP_mtpdevice_t *inDeviceStruct) :
    deviceStruct(inDeviceStruct)
{

}

MTPDevice::~MTPDevice() {
    //Tell libmtp to free this device
    LIBMTP_Release_Device(deviceStruct);
}

