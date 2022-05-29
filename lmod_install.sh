mkdir -p /install/lmod \
	&& cd /install/lmod \
	&& wget -N --no-check-certificate https://sourceforge.net/projects/lmod/files/lua-5.1.4.9.tar.bz2 \
	&& tar -xf lua-5.1.4.9.tar.bz2 \
	&& cd lua-5.1.4.9 \
	&& ./configure --prefix=/opt/apps/lua/5.1.4 \
	&& make -j10 \
	&& make -j10 install \
	&& ln -sf /opt/apps/lua/5.1.4 /opt/apps/lua/lua \
	&& mkdir -p /usr/local/bin \
	&& ln -sf /opt/apps/lua/lua/bin/lua /usr/local/bin

sudo yum  install -y lua-5.1.4-15.el7.x86_64 \
	lua-bitop-1.0.2-3.el7.x86_64 \
	lua-devel-5.1.4-15.el7.x86_64 \
	lua-json-1.3.2-2.el7.noarch \
	lua-lpeg-0.12-1.el7.x86_64 \
	lua-posix-32-2.el7.x86_64 \
	lua-term-0.03-3.el7.x86_64 \
	tcl-8.5.13-8.el7.x86_64 \
	tcl-devel-8.5.13-8.el7.x86_64


mkdir -p /install/lmod \
	&& cd /install/lmod \
	&& wget -N --no-check-certificate https://sourceforge.net/projects/lmod/files/Lmod-8.7.tar.bz2 \
	&& tar -xf Lmod-8.7.tar.bz2 \
	&& cd Lmod-8.7 \
	&& ./configure --prefix=/opt/apps \
	&& make -j10 install

ln -sf /opt/apps/lmod/lmod/init/profile        /etc/profile.d/z00_lmod.sh \
	&& ln -sf /opt/apps/lmod/lmod/init/cshrc          /etc/profile.d/z00_lmod.csh 


