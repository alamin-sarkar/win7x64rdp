echo "===================================="
echo "Download windows files"
echo "===================================="
wget -O w7x64.img https://archivist.vagrantup.com/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJib3hlcy82MDlhZDdhOC02YWE0LTRjMjctYTExNC1jMTk4MDYxNzVkZDciLCJtb2RlIjoiciIsImV4cGlyZSI6MTY0MjcwMzMxNX0.gQoDJeQIPTKDG80FzYmmN-IbllCL7bK-6F2kavC85VA
echo "===================================="
echo "Download ngrok"
echo "===================================="
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip &>/dev/null &
unzip ngrok-stable-linux-amd64.zip1 &>/dev/null & 
./ngrok authtoken 1j81S2IYesyKWRIexSUj8kKCuCE_6htxdVFrh6ykoyFdukiBT
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo "===================================="
echo Downloading File
echo "===================================="
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "Wait"
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
echo RDP Address:
echo "===================================="
echo "username: akuh"
echo "password: Akuh.Net"
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "===================================="
echo "===================================="
qemu-system-x86_64 -hda w7x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic > /dev/null 2>&1
sleep 43200

echo "===================================="
