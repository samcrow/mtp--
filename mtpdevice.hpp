#ifndef MTPDEVICE_HPP
#define MTPDEVICE_HPP

#include <string>
#include <libmtp.h>
#include <Boost/thread/mutex.hpp>

/**
  A mobile device connected with the MTP protocol
  */
class MTPDevice {
public:
    MTPDevice();

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

protected:

    LIBMTP_mtpdevice_t * deviceStruct;

    static bool libmtpInitialized;
    static boost::mutex initMutex;

};

#endif // MTPDEVICE_HPP
