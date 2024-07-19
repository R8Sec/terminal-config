## Requirements

The ansible community collection is required in order to use the pacman module
```bash
ansible-galaxy collection install community.general
```

## Run playbook

```bash
# Cache the sudo password before running the playbook, e.g.
sudo whoami

ansible-playbook workenv.yml
```

## Setting up hashcat

Hashcat needs the OpenCL, CUDA or HIP runtime to work
```bash
paru intel-opencl-runtime
```
