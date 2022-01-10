import strutils
import strformat
import os
import osproc
import tables
import parsecfg
import json
import marshal
import logging
import net
import asyncdispatch
import asyncnet
import streams
import threadpool
import uri
import algorithm
import base64
import asciitables
import docopt
import redisclient, redisparser

type
  ContainerInfo* = object of RootObj
    id*: string
    cpu*: float
    root*: string
    hostname*: string
    name*: string
    storage*: string
    pid*: int
    ports*: string


proc checkContainerExists*(this: App, containerid: int): bool =
  # checks if the container 'containerid' exists or not
  try:
    discard this.containerInfo(containerid)
    result = true
  except:
    result = false

proc readMany(this: Redis|AsyncRedis, count: int=1): Future[string] {.multisync.}
  if count == 0:
    return ""
  let data = await this.receiveManaged(count)
  return data

