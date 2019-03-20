# Google Cloud Platform Notes & Material

![Google Cloud Logo](https://storage.googleapis.com/gweb-cloudblog-publish/original_images/CloudBLog_YearInReview_REV.gif)

## Notes

1. [Initialize VM Bash Script](initialize_gcp_vm.sh)


## Instructions

Most instructions to form a compute engine with Jupyter Notebook can be found [from this article by Amulya Aankul](gcloud compute --project "personal-machine-230918" ssh --zone "us-west1-b" "general-analytics-stack2"). 

Other imports lil Git, Kaggle SDK, and other items are added on top of the mentioned article

> Note: I am assuming you are working with GCP under the free 12-month trial period

1. Create a Compute Engine VM instance

	a. Recommended Machine Type: n1-highmem-2 (2 vCPUs, 13 GB memory) and above
	
	b. Firewalls: Allow HTTP traffic, Allow HTTPS traffic

	c. Network tags: http-server, https-server
	
2. Static IP Address

	a. VPC Network > External IP Addresses: Change type "Empheral" to "Static"
	
	b. Source IP Ranges: 0.0.0.0/0
	
	c. Protocol and Ports: tcp:5000
	
3. Imports

```
sudo apt get-install
sudo apt-get install bzip2 git libxml2-dev
sudo apt-get install zip unzip

wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
rm Anaconda3-5.0.1-Linux-x86_64.sh
source .bashrc

#alias brc='chmod a+x ~/.bashrc; source ~/.bashrc' 

# Update Jupyter Notebook IPv4 or IPV6 issues from version 5.0.1.
# (https://jupyter.readthedocs.io/en/latest/projects/upgrade-notebook.html)
conda update jupyter 

pip install kaggle --upgrade

jupyter notebook --generate-config

```

4. Jupyter Config

```
c = get_config()
c.NotebookApp.ip = '0.0.0.0/0'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 5000
```

5. Deploy 
> Exact command line [here](https://stackoverflow.com/questions/48115800/not-able-to-run-jupyter-notebook-on-google-cloud)

```
jupyter notebook --no-browser --ip=0.0.0.0 --port=5000
```
