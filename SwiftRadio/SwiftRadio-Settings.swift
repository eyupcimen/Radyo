//
//  SwiftRadio-Settings.swift
//  Swift Radio
//
//  Created by Matthew Fecher on 7/2/15.
//  Copyright (c) 2015 MatthewFecher.com. All rights reserved.
//  http://www.radyocihan.com/assets/components/library/flowplayer/flowplayer.rtmp-3.2.13.swf
// Aile Rehberi 
// Shoutcast Adresi    http://213.74.215.219:8012/listen.pls




import Foundation

//**************************************
// GENERAL SETTINGS
//**************************************

// Display Comments
let DEBUG_LOG = true

//**************************************
// STATION JSON
//**************************************

// If this is set to "true", it will use the JSON file in the app
// Set it to "false" to use the JSON file at the stationDataURL

let useLocalStations = true
// let stationDataURL   = "http://www.radyocihan.com/ajax/handler/Stream/createStream/1456753027892"
 let stationDataURL   = "http://46.165.233.175:4092/"

//**************************************
// SEARCH BAR
//**************************************

// Set this to "true" to enable the search bar
let searchable = false

//**************************************
// LASTFM API
//**************************************

// Use LastFM or iTunes API
// set to "false" to use iTunes
let useLastFM = true

// IF YOU USE LASTFM, PLEASE USE YOUR OWN KEY
// Visit: http://www.last.fm/api

let apiKey    = "9a267c245324cfa4f887366d497d3dd3"
let apiSecret = "f1191864d7ae71e580b89238129768b8"

