# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

c = {}

c.IDS =

 INITIATIVE : 1
 EVENT      : 2
 COMPANY    : 3

c.MAIN_IDS = [c.IDS.INITIATIVE, c.IDS.EVENT, c.IDS.COMPANY]

c.CSS_CLASSES = {}
c.CSS_CLASSES[c.IDS.INITIATIVE] = "initiative"
c.CSS_CLASSES[c.IDS.EVENT]      = "event"
c.CSS_CLASSES[c.IDS.COMPANY]    = "company"

c.CSS_CLASS_SIZE = {}
c.CSS_CLASS_SIZE[c.IDS.INITIATIVE] = "pure-u-8-24"
c.CSS_CLASS_SIZE[c.IDS.EVENT]      = "pure-u-7-24"
c.CSS_CLASS_SIZE[c.IDS.COMPANY]    = "pure-u-9-24"

c.NAMES = {}
c.NAMES[c.IDS.INITIATIVE]  = "Initiative"
c.NAMES[c.IDS.EVENT]       = "Event"
c.NAMES[c.IDS.COMPANY]     = "Unternehmen"

module.exports = c
