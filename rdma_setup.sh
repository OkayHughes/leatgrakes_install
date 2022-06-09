
write_rdma_conf() {
cat <<HERE > /etc/security/limits.d/rdma.conf
# configuration for rdma tuning
*       soft    memlock         unlimited
*       hard    memlock         unlimited
# rdma tuning end
HERE

}


mkdir -p /sys/kernel/config/rdma_cm/mlx5_0/ \
	&& cat /sys/kernel/config/rdma_cm/mlx5_0/ports/1/default_roce_mode \
	&& python3 rdma.py \
	&& write_rdma_conf \
	&& reboot 

