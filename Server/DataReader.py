#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import json
import jsonlines
import ast


# In[ ]:


def readJSON(filepath):
    return json.load(open(filepath))


# In[ ]:


def readTXT(filepath):
    jsonDataItems = []
    with open(filepath, mode="r", encoding="utf-8") as f:
        for line in f.readlines():
            try:
                jsonDataItems.append(json.loads(line.strip()))
            except:
                try:
                    jsonDataItems.append(ast.literal_eval(line.strip()))
                except:
                    with open('errors.txt', 'a') as fe:
                        fe.write('Failed to load item from ' + filepath + ' : ' + line + '\n')
                        
    return jsonDataItems


# In[ ]:


def readJSONL(filepath):
    try:
        for jsonData in jsonlines.open(filepath):
            continue
        return jsonlines.open(filepath)
    except:
        return readTXT(filepath)

