#ifndef MTPDEVICE_HPP
#define MTPDEVICE_HPP

#include <string>
#include <vector>
#include <libmtp.h>
#include <Boost/thread/mutex.hpp>

/**
  A mobile device connected with the MTP protocol
  */
class MTPDevice {
public:

    /**
      Print information about this device
      see LIBMTP_Dump_Device_Info
      */
    void dumpDeviceInfo();

    /**
      Reset the device. The device may or may not support this operation.
      see http://libmtp.sourcearchive.com/documentation/0.3.0-1ubuntu1/group__basic_g8c0533cfe243418108aaef6c46d80c28.html#g8c0533cfe243418108aaef6c46d80c28
      */
    void reset();

    /**
      Get the name of the device's manufacturer
      */
    std::string getManufacturerName();

    /**
      Get the device model name
      */
    std::string getModelName();

    /**
      Get the device serial number
      */
    std::string getSerialNumber();

    /**
      Get the device version
      */
    std::string getVersion();

    /**
      Get a human-friendly name for the device
      @see setFriendlyName()
      */
    std::string getFriendlyName();

    /**
      Get the device's synchronization partner
      The meaning of this is not currently known.
      @see setSyncPartner()
      */
    std::string getSyncPartner();

    /**
      Get the device's battery level.
      @return The battery level from 0 (empty) to 1 (full), 0 if the device is running on external power, or 0 if the operation failed
      */
    double getBatteryLevel();

    /**
      Get the secure time.
      The meaning of this is not currently known.
      */
    std::string getSecureTime();

    /**
      Get the device certificate. This is probably cryptography-related, but its meaning is unknown.
      */
    std::string getCertificate();

    //Section: device data modification

    /**
      Set the human-friendly name for the device
      @return true on success, false on failure
      @see getFriendlyName()
      */
    bool setFriendlyName(std::string name);

    /**
      Set the synchronization partner for this device
      @return true on success, false on failure
      @see getSyncPartner();
      */
    bool setSyncPartner(std::string partner);

    //TODO: get supported filetypes

    /**
      Print information on errors encountered with this device
      */
    void dumpErrorStack();

    /**
      Clear the errors encountered with this device
      */
    void clearErrorStack();


    /**
      Get a pointer to a newly allocated list of pointers to all the newly allocated devices
      that are currently connected to this computer.
      If no devices are connected or an error occurs, this function returns an empty std::vector.
      */
    static std::vector<MTPDevice *> * getConnectedDevices();



    //Destructor
    virtual ~MTPDevice();

protected:

    LIBMTP_mtpdevice_t * deviceStruct;

    static bool libmtpInitialized;
    static boost::mutex initMutex;

    //Protected constructor
    /**
      Constructor
      @param inDeviceStruct The libmtp-provided device struct to represent this object
      */
    MTPDevice(LIBMTP_mtpdevice_t * inDeviceStruct);

};

#endif // MTPDEVICE_HPP
