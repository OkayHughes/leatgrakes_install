from subprocess import run
names_in = ["mlx5_ib0", "mlx5_ib1"]
names_out = ["mlx5_ib0", "mlx5_ib1"]
output_1 = run(["ip", "link", "show", names_in[0]], capture_output=True, encoding="utf-8")
output_2 = run(["ip", "link", "show", names_in[1]], capture_output=True, encoding="utf-8")
n1 = output_1.stdout.split(" brd")[0][-23:]
n2 = output_2.stdout.split(" brd")[0][-23:]
addrs = [n1, n2]
print(n1)
print(n2)
form_string="ACTION==\"add\", SUBSYSTEM==\"net\", DRIVERS==\"?*\", ATTR{{type}}==\"32\", ATTR{{address}}==\"?*{}\", NAME=\"{}\""
with open("/etc/udev/rules.d/70-persistent-ipoib.rules", "w") as f:
	lines = "\n".join([form_string.format(addr_out, n_out) for (addr_out, n_out) in zip(addrs, names_out)])
	f.write(lines)

