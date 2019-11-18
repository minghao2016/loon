import pandas as pd
from __init__ import working_dir
## @var iris 
#  iris dataset 
#iris = pd.read_csv('./loon/datasets/iris.csv')
iris = pd.read_csv(working_dir+'/datasets/iris.csv')
## @var olive 
#  olive dataset 
#olive = pd.read_csv('./loon/datasets/olive.csv')
olive = pd.read_csv(working_dir + '/datasets/olive.csv')
## @var oliveAcids 
#  oliveAcids dataset 
#oliveAcids = pd.read_csv('./loon/datasets/oliveAcids.csv')
oliveAcids = pd.read_csv(working_dir + '/datasets/oliveAcids.csv')

## @var oliveLocations 
#  oliveLocations dataset 
#oliveLocations = pd.read_csv('./loon/datasets/oliveLocations.csv')
oliveLocations = pd.read_csv(working_dir + '/datasets/oliveLocations.csv')

## @var UsAndThem 
# Data to re-create Hans Rosling's famous "Us and Them" animation
# @brief This data was sourced from https://www.gapminder.org/ and
# contains Population, Life Expectancy, Fertility, Income, and
# Geographic.Region information between 1962 and 2013 for 198 countries.
#oliveLocations = pd.read_csv('./loon/datasets/oliveLocations.csv')
oliveLocations = pd.read_csv(working_dir + '/datasets/oliveLocations.csv')


#quakes = pd.read_csv('./loon/datasets/quakes.csv')
quakes = pd.read_csv(working_dir + '/datasets/quakes.csv')
