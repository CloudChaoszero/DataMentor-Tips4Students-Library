# Python Visualization Issues (Plotly, Seaborn, etc)

## Plotly Express

### Workaround

Run this line in a cell within your Jupyter Notebook: 

```
!pip install plotly_express
```


### Similar Scenario
I had the same issue as you. I went through to try to resolve it, but I actually found a quick workaround for this issue, while a somewhat larger issue is at hand for particular **pip** paths for some people.


### Root Cause

When we ran `pip install plotly_express` in our CLIs, we downloaded the package in the **system's pip** tool, and not within **anaconda's pip**. Even with the consideration of creating an environment, you would get this issue. 

After some trial and errors from finding out that upgrading[ jupyter, system's python](https://github.com/jupyter/notebook/issues/2786), and manually trying to change [the .bash_profile's filepath](https://stackoverflow.com/questions/35313876/after-installing-with-pip-jupyter-command-not-found), I got nothing. 

![Why Though](https://media.tenor.com/images/d02f68f2b8785baa2e72115dec9bceed/tenor.gif)

### Solution

After checking the diff's of the system and jupyter`pip list` and `conda list`, I thought:
"why don't I just run the command within the Jupyter Notebook?"

Ran the following, and it seems to work now.

```
#Example code from documentation
iris = px.data.iris()
px.scatter(iris, x="sepal_width", y="sepal_length")
#Enjoy the visualization, hopefully :D 
```

> **Note**:  Pycharm has an association with system's default pip and python, but not to anaconda's equivalent

# Work still needed

Direct the pip and python path's from system/CLI to anaconda's paths.