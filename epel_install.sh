sudo subscription-manager repos --enable rhel-*-optional-rpms \
                           --enable rhel-*-extras-rpms \
                           --enable rhel-ha-for-rhel-*-server-rpms
subscription-manager repos --disable=rhel-7-server-eus-optional-rpms
sudo subscription-manager repos --disable=rhel-7-server-e4s-optional-rpms
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y update
