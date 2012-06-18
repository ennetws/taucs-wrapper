TARGET = smoothme
TEMPLATE = app
QT += core 
QT -= gui
CONFIG += console
CONFIG -= app_bundle

# Import framework
mac{
    QMAKE_CXXFLAGS += -F$$(HOME)/Library/Frameworks
    QMAKE_LFLAGS += -F$$(HOME)/Library/Frameworks
    LIBS += -framework Taucs
}

# USE SurfaceMeshModel
INCLUDEPATH += $$PWD/SurfaceMeshModel

SOURCES += main.cpp \
    SurfaceMeshModel/Surface_mesh.cpp \
    SurfaceMeshModel/IO.cpp \
    SurfaceMeshModel/IO_off.cpp

HEADERS += \
    SurfaceMeshModel/Surface_mesh.h \
    SurfaceMeshModel/properties.h
