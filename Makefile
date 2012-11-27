#############################################################################
# Makefile for building: libmtp++.1.0.0.dylib
# Generated by qmake (2.01a) (Qt 4.8.0) on: Mon Nov 26 16:25:19 2012
# Project:  mtp++.pro
# Template: lib
# Command: /Users/samcrow/QtSDK/Desktop/Qt/4.8.0/gcc/bin/qmake -spec ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/macx-g++ CONFIG+=declarative_debug -o Makefile mtp++.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = 
CFLAGS        = -pipe -g -gdwarf-2 -arch x86_64 -Xarch_x86_64 -mmacosx-version-min=10.5 -Wall -W -fPIC $(DEFINES)
CXXFLAGS      = -pipe -g -gdwarf-2 -arch x86_64 -Xarch_x86_64 -mmacosx-version-min=10.5 -Wall -W -fPIC $(DEFINES)
INCPATH       = -I../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/macx-g++ -I. -I/opt/local/include
LINK          = g++
LFLAGS        = -headerpad_max_install_names -arch x86_64 -single_module -dynamiclib -compatibility_version	1.0 -current_version	1.0.0 -install_name	libmtp++.1.dylib -Xarch_x86_64 -mmacosx-version-min=10.5
LIBS          = $(SUBLIBS)   -L/opt/local/lib -lmtp 
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /Users/samcrow/QtSDK/Desktop/Qt/4.8.0/gcc/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = 
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.4

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = mtpdevice.cpp 
OBJECTS       = mtpdevice.o
DIST          = ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/unix.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/mac.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base-macx.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-base.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-macx.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/qconfig.pri \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/modules/qt_webkit_version.pri \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_functions.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_config.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/exclusive_builds.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_pre.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_pre.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/dwarf2.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/debug.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_post.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_post.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/objective_c.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/declarative_debug.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/x86_64.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/warn_on.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/rez.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/sdk.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/resources.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/uic.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/yacc.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/lex.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/include_source_dir.prf \
		mtp++.pro
QMAKE_TARGET  = mtp++
DESTDIR       = 
TARGET        = libmtp++.1.0.0.dylib
TARGETA       = libmtp++.a
TARGETD       = libmtp++.1.0.0.dylib
TARGET0       = libmtp++.dylib
TARGET1       = libmtp++.1.dylib
TARGET2       = libmtp++.1.0.dylib

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-arch \
		x86_64 \
		-Xarch_x86_64 \
		-mmacosx-version-min=10.5 \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile  $(TARGET)

$(TARGET):  $(OBJECTS) $(SUBLIBS) $(OBJCOMP)  
	-$(DEL_FILE) $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS) $(OBJCOMP)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)



staticlib: $(TARGETA)

$(TARGETA):  $(OBJECTS) $(OBJCOMP) 
	-$(DEL_FILE) $(TARGETA) 
	$(AR) $(TARGETA) $(OBJECTS)
	$(RANLIB) $(TARGETA)

Makefile: mtp++.pro  ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/macx-g++/qmake.conf ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/unix.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/mac.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base-macx.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-base.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-macx.conf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/qconfig.pri \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/modules/qt_webkit_version.pri \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_functions.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_config.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/exclusive_builds.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_pre.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_pre.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/dwarf2.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/debug.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_post.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_post.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/objective_c.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/declarative_debug.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/x86_64.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/warn_on.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/rez.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/sdk.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/resources.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/uic.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/yacc.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/lex.prf \
		../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/macx-g++ CONFIG+=declarative_debug -o Makefile mtp++.pro
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/unix.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/mac.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/gcc-base-macx.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-base.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/common/g++-macx.conf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/qconfig.pri:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/modules/qt_webkit_version.pri:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_functions.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/qt_config.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/exclusive_builds.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_pre.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_pre.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/dwarf2.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/debug.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/default_post.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/default_post.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/objective_c.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/declarative_debug.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/x86_64.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/warn_on.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/rez.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/mac/sdk.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/resources.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/uic.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/yacc.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/lex.prf:
../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -spec ../../../QtSDK/Desktop/Qt/4.8.0/gcc/mkspecs/macx-g++ CONFIG+=declarative_debug -o Makefile mtp++.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/mtp++1.0.0 || $(MKDIR) .tmp/mtp++1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/mtp++1.0.0/ && (cd `dirname .tmp/mtp++1.0.0` && $(TAR) mtp++1.0.0.tar mtp++1.0.0 && $(COMPRESS) mtp++1.0.0.tar) && $(MOVE) `dirname .tmp/mtp++1.0.0`/mtp++1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/mtp++1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)
	-$(DEL_FILE) Makefile


check: first

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

mtpdevice.o: mtpdevice.cpp mtpdevice.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mtpdevice.o mtpdevice.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/lib/ || $(MKDIR) $(INSTALL_ROOT)/usr/lib/ 
	-$(INSTALL_PROGRAM) "$(TARGET)" "$(INSTALL_ROOT)/usr/lib/$(TARGET)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/lib/$(TARGET0)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/lib/$(TARGET1)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/lib/$(TARGET2)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/usr/lib/$(TARGET)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/lib/$(TARGET0)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/lib/$(TARGET1)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/lib/$(TARGET2)"
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/lib/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:
