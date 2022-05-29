mkdir -p /install/xppsl \
	&& cd /install/xppsl \
	&& wget -N https://downloadmirror.intel.com/27406/eng/xppsl-1.5.4-rhel7.3.tar \
	&& tar -xf xppsl-1.5.4-rhel7.3.tar \
	&& cd xppsl-1.5.4/rhel7.3/ \
	&& sudo yum -y install x86_64/*.rpm
