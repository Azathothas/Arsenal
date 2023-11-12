WIP
---
- #### Info
[B Series Machines](https://azure.microsoft.com/en-us/blog/introducing-b-series-our-new-burstable-vm-size/) operate on [cpu-credit-model](https://learn.microsoft.com/en-us/azure/virtual-machines/b-series-cpu-credit-model/b-series-cpu-credit-model) & are [burstable](https://learn.microsoft.com/en-us/azure/virtual-machines/disk-bursting). What this means is, they will auto scale down (save/accumulate credits) when resources aren't being used and then scale up (use saved credit) again when demanded. A **reboot** **will `reset` all credits**.

**More**:
> - https://www.youtube.com/watch?v=M0Qn69xEBkk
> - https://www.onenet.co.nz/our-resources/babbling-about-azure-b-series-burstable-vms/
> - https://www.reddit.com/r/AZURE/comments/fhgx0i/anyone_using_b_series_instances_in_azure/
> - https://www.reddit.com/r/AZURE/comments/8e9ug1/is_there_a_caveat_with_the_b_series_machines/
> - https://www.reddit.com/r/AZURE/comments/11o1mug/why_is_my_b8ms_azure_vm_too_slow/
---
- #### Specs & Comparison
| VM Size | Type | vCPUs | RAM (GiB) | [Data Disks](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview#data-disk) | [Max IOPS](https://blog.purestorage.com/purely-technical/an-analysis-of-io-size-modalities-on-pure-storage-flasharrays/) | [Temp Storage (GiB)](https://www.cloudelicious.net/azure-vms-and-their-temporary-storage/) | Cost/Month | Comments (Remarks)|
|---------|------|-------|-----------|------------|----------|--------------------|------------|-------------------|
| [**`B1ls`**](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes-b-series-burstable) | General purpose | 1 | 0.5 | 2 | 320 | 4 | **`$4.96`** `~ 60$/Year` ($100 Credits last for 12 months) | Cheapest (Mini _Always On VPS/VPN_) Can Run Multiples|
| [**`B1s`**](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes-b-series-burstable) | General purpose | 1 | 1 | 2 | 320 | 4 | **`$9.93`** `~ 120$/Year`  | **`2x B1ls`** `Always Online` --> **`11 Months`** [`99$ ==> 10 Months` + `30 Days` (750 Hrs because marked as free services eligible)] |
| [**`B2ts_v2`**](https://learn.microsoft.com/en-us/azure/virtual-machines/bsv2-series) | General purpose | 2 | 1 | 4 | 3750 | 0 | **`$9.93`** `~ 120$/Year`  | `2x` `vCPU RAM` than `B1s`but exact same specs as `B2ats_v2` but no free tier & higher price. **Avoid** |
| [**`B2ats_v2`**](https://learn.microsoft.com/en-us/azure/virtual-machines/bsv2-series) | General purpose | 2 | 1 | 4 | 3750 | 0 | **`$8.98`** `~ 107$/Year` | Better & Performant than `B1s`. `Always Online` --> **`1 Year`** [`99$ ==> 11 Months` + `30 Days` (750 Hrs because marked as free services eligible)] |
---
- #### Examples & Use Cases
> - **Dev Setup**
> > - Note: Depending upon availability in the region, the vm type may not be available. Either request for quota, choose another region or wait for it to become available again.
> > - Also, prices sometimes vary by upto 5$ depending on the region, for the same VM
> ![image](https://github.com/Azathothas/Arsenal/assets/58171889/ddb0a1f0-1c95-42a2-bb56-29e618ffb49f)
> ![image](https://github.com/Azathothas/Arsenal/assets/58171889/bf4b9c5c-5643-4ea9-b98b-56e19e0b5695)

> - **Media Server**
> - **VPN**
---
- #### Refs & Informed Decision Making
> - https://www.cloudelicious.net/azure-vms-and-their-temporary-storage/
> - https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview#temporary-disk
