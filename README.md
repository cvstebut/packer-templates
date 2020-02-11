# packer-templates

Templates for use with Packer.
Forked from https://github/packer-templates and adjusted to current version on VyOS on HyperV Generation 2.

## VyAttaCore and VyOS-1.1.X / VyOS-1.2.x

No changes to forked code.

## VyOS 1.3-rolling

Only tested on Hyper-V with generation 2 machines. No changes needed to the boot command for generation 2, so it should work on generation 1 just fine.

My own lab runs on HyperV. So I limited myself to the hyper-v provisioner. For ease of use, I deleted the other builders in the template.

I did disable a couple of scripts, assuming they are either out of date (squeeze) or not needed (hyper-v extension are already included and seem to work fine in buster)

See folder VyOS-1.3-rolling-amd64

### Building the packer box

Have a look at the current version of VyOS rolling release (see https://downloads.vyos.io/?dir=rolling/current/amd64) and adjust the "product_version" in the template.json accordingly.

Then start the build

```
cd VyOS-1.3-rolling-amd64
packer build -only=hyperv-iso template.json
```

## Feedback please :-)

Please use at your own risk - as the saying goes: you get to keep the pieces ...

If you can think of any improvements, please do so and give feedback.