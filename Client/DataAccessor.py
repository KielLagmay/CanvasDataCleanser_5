#!/usr/bin/env python
# coding: utf-8

# In[1]:


'''
Sources:
https://pyro4.readthedocs.io/en/stable/tutorials.html
https://stackoverflow.com/questions/3207219/how-do-i-list-all-files-of-a-directory
https://stackoverflow.com/questions/49153835/transfer-files-with-python-2-7-pyro4-unicodeencodeerror
https://www.tutorialspoint.com/synchronizing-threads-in-python#:~:text=The%20threading%20module%20provided%20with,force%20threads%20to%20run%20synchronously.
'''


# In[2]:


import pandas as pd
import time


# In[1]:


class DataAccessor(object):
    def __init__(self, datawarehouse):
        self.datawarehouse = datawarehouse
        
    def performDataCleansing(self, workerId):
        processedItems = []
        item = self.datawarehouse.removeItem()
        #print(item)
        while(item != None):
            self.datawarehouse.cleanseData(item)
            processedItems.append(item)
            time.sleep(1)
            item = self.datawarehouse.removeItem()
        return ({workerId: processedItems})

