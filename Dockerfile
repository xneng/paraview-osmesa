
FROM ubuntu:18.04

RUN apt update
RUN apt install -y curl net-tools
RUN apt install -y libgl1-mesa-glx libpng16-16 gfortran-7

RUN mkdir /opt/paraview
RUN curl -sL 'https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.9&type=binary&os=Linux&downloadFile=ParaView-5.9.1-osmesa-MPI-Linux-Python3.8-64bit.tar.gz' | tar zxf - -C /opt/paraview --strip-components 1

ENV PATH /opt/paraview/bin:$PATH
