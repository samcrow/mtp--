#include "mtpdevice.hpp"

//Set up static members
bool MTPDevice::libmtpInitialized = false;
boost::mutex MTPDevice::initMutex;

MTPDevice::MTPDevice()
{
    //If necessary, initialize libmtp
    initMutex.lock();
    if(!libmtpInitialized) {
        LIBMTP_Init();
        libmtpInitialized = true;
    }
    initMutex.unlock();
}

void MTPDevice::dumpDeviceInfo() {
    LIBMTP_Dump_Device_Info(deviceStruct);
}

void MTPDevice::reset() {
    LIBMTP_Reset_Device(deviceStruct);
}

std::string MTPDevice::getManufacturerName() {
    return LIBMTP_Get_Manufacturername(deviceStruct);
}

std::string MTPDevice::getModelName() {
    return LIBMTP_Get_Modelname(deviceStruct);
}

std::string MTPDevice::getSerialNumber() {
    return LIBMTP_Get_Serialnumber(deviceStruct);
}
