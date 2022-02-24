#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import os


# In[ ]:


class DirectoryGenerator:
    def getDelimiter(self):
        if(os.name == 'posix'):
            return '/'
        elif(os.name == 'nt'):
            return '\\'
    
    def getDirectory(self, rootFolder, destination, *folders):
        fullDir = rootFolder + self.getDelimiter()
        for folder in folders:
            fullDir = fullDir + folder + self.getDelimiter()
        return fullDir + destination

