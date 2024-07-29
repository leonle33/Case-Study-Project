{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "1afada62",
   "metadata": {
    "papermill": {
     "duration": 0.009643,
     "end_time": "2024-07-29T22:59:48.796126",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.786483",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Case Study: Cyclistic Bike-sharing \n",
    "*Leon Le*\n",
    "\n",
    "*March 6th, 2024*\n",
    "\n",
    "## Introduction\n",
    "\n",
    "This is the capstone project portion for the *Google Data Analytics Professional Certificate*. The purpose of this case study is to showcase the analytical skills I have gained through this certification. In this case study I will go through the steps of the data analysis process, and analyze a dataset from Cyclistic, a bike-share company in Chicago. I will use my analysis to identify trends and provide recommendations to improve marketing strategies for Cyclistic. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "38f44c3c",
   "metadata": {
    "papermill": {
     "duration": 0.009341,
     "end_time": "2024-07-29T22:59:48.814649",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.805308",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Data Analysis Process\n",
    "There are six steps that go into the data analysis phase: \n",
    "1. Ask\n",
    "2. Prepare\n",
    "3. Process\n",
    "4. Analyze \n",
    "5. Share\n",
    "6. Act\n",
    "\n",
    "In this case study, I will demonstrate each of these steps in order to solve the business task at hand. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "60911b64",
   "metadata": {
    "papermill": {
     "duration": 0.00895,
     "end_time": "2024-07-29T22:59:48.832633",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.823683",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 1. Ask\n",
    "### Business Task: \n",
    "Cyclistic is a bike-sharing program that launched more than 5,800 bicycles and 600 docking stations in 2016 all across Chicago. Until now, their marketing strategy relied on building awareness and appealing to broad consumer segments by having flexibility on its pricing plans: \n",
    "* single-ride passes (casual rider)\n",
    "* full-day passes (casual rider)\n",
    "* annual memberships (Cyclistic member)\n",
    "\n",
    "Cyclistic's team is aware that maximizing the number of annual members will be the key to future growth. Therefore, the Cyclistic marketing analytics team wants us to analyze and find trends in their trip data. The goal of this analysis is to create a marketing strategy to maximize the number of annual memberships. We will compare differences between casual riders and annual members, and create a marketing strategy to convert casual riders to annual members. We will present our findings to the stakeholders, the Cyclistic executive and marketing team, and they will decide whether to approve the recommended marketing program. \n",
    "\n",
    "Main questions we will ask to achieve this goal are:\n",
    "* How do casual riders and clyclistic members differ? \n",
    "* Why would casual riders buy a membership? \n",
    "* How can Cyclistic use digital media to influence casual riders to become members?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "69e90cea",
   "metadata": {
    "papermill": {
     "duration": 0.009155,
     "end_time": "2024-07-29T22:59:48.850667",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.841512",
     "status": "completed"
    },
    "tags": []
   },
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "0757922f",
   "metadata": {
    "papermill": {
     "duration": 0.008845,
     "end_time": "2024-07-29T22:59:48.868851",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.860006",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 2. Prepare\n",
    "For this analysis, I will be using R to prepare and process the data for analysis. The Cyclistic trip data from the last 12 months, May 2023 - April 2024, has been made available for us to use. Each csv formatted data set is for a period of one month that logs how different customers types are using Cyclystic services. This data has been made publicly available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement). We will prepare and process all necessary data so it will be ready for our analysis. Once that is done, the datasets will provide us with all the necessary information we need in order to solve our business task at hand: Creating a marketing strategy to maximize the numbers of annual memberships."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "f8e34b10",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T22:59:48.892186Z",
     "iopub.status.busy": "2024-07-29T22:59:48.889544Z",
     "iopub.status.idle": "2024-07-29T22:59:50.291659Z",
     "shell.execute_reply": "2024-07-29T22:59:50.289702Z"
    },
    "papermill": {
     "duration": 1.416589,
     "end_time": "2024-07-29T22:59:50.294262",
     "exception": false,
     "start_time": "2024-07-29T22:59:48.877673",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘janitor’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    chisq.test, fisher.test\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘scales’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:purrr’:\n",
      "\n",
      "    discard\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:readr’:\n",
      "\n",
      "    col_factor\n",
      "\n",
      "\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'/kaggle/working'"
      ],
      "text/latex": [
       "'/kaggle/working'"
      ],
      "text/markdown": [
       "'/kaggle/working'"
      ],
      "text/plain": [
       "[1] \"/kaggle/working\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(tidyverse) #for data manipulation, exploration, and visualization\n",
    "library(lubridate) #working with dates\n",
    "library(janitor) #clean data\n",
    "library(dplyr) #data manipulation\n",
    "library(ggplot2) #visuals\n",
    "library(scales)\n",
    "getwd()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "0551872f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T22:59:50.348342Z",
     "iopub.status.busy": "2024-07-29T22:59:50.315884Z",
     "iopub.status.idle": "2024-07-29T23:01:28.831445Z",
     "shell.execute_reply": "2024-07-29T23:01:28.829218Z"
    },
    "papermill": {
     "duration": 98.531079,
     "end_time": "2024-07-29T23:01:28.835176",
     "exception": false,
     "start_time": "2024-07-29T22:59:50.304097",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#importing previous 12 months of Cyclistic trip data\n",
    "dataMay23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202305-divvy-tripdata.csv\")\n",
    "dataJun23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202306-divvy-tripdata.csv\")\n",
    "dataJul23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202307-divvy-tripdata.csv\")\n",
    "dataAug23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202308-divvy-tripdata.csv\")\n",
    "dataSept23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202309-divvy-tripdata.csv\")\n",
    "dataOct23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202310-divvy-tripdata.csv\")\n",
    "dataNov23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202311-divvy-tripdata.csv\")\n",
    "dataDec23 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202312-divvy-tripdata.csv\")\n",
    "dataJan24 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202401-divvy-tripdata.csv\")\n",
    "dataFeb24 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202402-divvy-tripdata.csv\")\n",
    "dataMar24 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202403-divvy-tripdata.csv\")\n",
    "dataApr24 <- read.csv(\"/kaggle/input/cyclistictripsdataset/202404-divvy-tripdata.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc950de0",
   "metadata": {
    "papermill": {
     "duration": 0.009974,
     "end_time": "2024-07-29T23:01:28.859567",
     "exception": false,
     "start_time": "2024-07-29T23:01:28.849593",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 3. Process\n",
    "First, let's combine all of our data into one big dataset and ensure that all data is in one spot. Next, there are a few columns that we will be using for our analysis like the station IDs and their longitudes and latitudes. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cc3e5112",
   "metadata": {
    "papermill": {
     "duration": 0.00952,
     "end_time": "2024-07-29T23:01:28.878910",
     "exception": false,
     "start_time": "2024-07-29T23:01:28.869390",
     "status": "completed"
    },
    "tags": []
   },
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "c1aaa1f7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:01:28.902359Z",
     "iopub.status.busy": "2024-07-29T23:01:28.900710Z",
     "iopub.status.idle": "2024-07-29T23:02:04.100272Z",
     "shell.execute_reply": "2024-07-29T23:02:04.098299Z"
    },
    "papermill": {
     "duration": 35.215576,
     "end_time": "2024-07-29T23:02:04.104293",
     "exception": false,
     "start_time": "2024-07-29T23:01:28.888717",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#combining all data into one dataset\n",
    "allRawData <- rbind(dataMay23, dataJun23, dataJul23, dataAug23, dataSept23, dataOct23, dataNov23, dataDec23, dataJan24, dataFeb24, dataMar24, dataApr24)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "5085b6ce",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:02:04.129537Z",
     "iopub.status.busy": "2024-07-29T23:02:04.127918Z",
     "iopub.status.idle": "2024-07-29T23:02:04.302874Z",
     "shell.execute_reply": "2024-07-29T23:02:04.299428Z"
    },
    "papermill": {
     "duration": 0.192269,
     "end_time": "2024-07-29T23:02:04.308443",
     "exception": false,
     "start_time": "2024-07-29T23:02:04.116174",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 5738612 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>0D9FA920C3062031</td><td>electric_bike</td><td>2023-05-07 19:53:48</td><td>2023-05-07 19:58:32</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Belmont Ave      </span></td><td><span style=white-space:pre-wrap>13229       </span></td><td><span style=white-space:pre-wrap>                               </span></td><td><span style=white-space:pre-wrap>            </span></td><td>41.93941</td><td>-87.66383</td><td>41.93000</td><td>-87.65000</td><td>member</td></tr>\n",
       "\t<tr><td>92485E5FB5888ACD</td><td>electric_bike</td><td>2023-05-06 18:54:08</td><td>2023-05-06 19:03:35</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Belmont Ave      </span></td><td><span style=white-space:pre-wrap>13229       </span></td><td><span style=white-space:pre-wrap>                               </span></td><td><span style=white-space:pre-wrap>            </span></td><td>41.93948</td><td>-87.66385</td><td>41.94000</td><td>-87.69000</td><td>member</td></tr>\n",
       "\t<tr><td>FB144B3FC8300187</td><td>electric_bike</td><td>2023-05-21 00:40:21</td><td>2023-05-21 00:44:36</td><td><span style=white-space:pre-wrap>Halsted St &amp; 21st St             </span></td><td><span style=white-space:pre-wrap>13162       </span></td><td><span style=white-space:pre-wrap>                               </span></td><td><span style=white-space:pre-wrap>            </span></td><td>41.85379</td><td>-87.64672</td><td>41.86000</td><td>-87.65000</td><td>member</td></tr>\n",
       "\t<tr><td>DDEB93BC2CE9AA77</td><td>classic_bike </td><td>2023-05-10 16:47:01</td><td>2023-05-10 16:59:52</td><td><span style=white-space:pre-wrap>Carpenter St &amp; Huron St          </span></td><td><span style=white-space:pre-wrap>13196       </span></td><td><span style=white-space:pre-wrap>Damen Ave &amp; Cortland St        </span></td><td><span style=white-space:pre-wrap>13133       </span></td><td>41.89456</td><td>-87.65345</td><td>41.91598</td><td>-87.67733</td><td>member</td></tr>\n",
       "\t<tr><td>C07B70172FC92F59</td><td>classic_bike </td><td>2023-05-09 18:30:34</td><td>2023-05-09 18:39:28</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Clark St         </span></td><td>TA1308000047</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Belmont Ave    </span></td><td><span style=white-space:pre-wrap>13229       </span></td><td>41.95708</td><td>-87.66420</td><td>41.93948</td><td>-87.66375</td><td>member</td></tr>\n",
       "\t<tr><td>2BA66385DF8F815A</td><td>classic_bike </td><td>2023-05-30 15:01:21</td><td>2023-05-30 15:17:00</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Ohio St           </span></td><td>TA1306000029</td><td>41.88275</td><td>-87.64119</td><td>41.89259</td><td>-87.61729</td><td>member</td></tr>\n",
       "\t<tr><td>31EFCCB05F12D8EF</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-09 14:13:40</td><td>2023-05-09 14:47:20</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td><span style=white-space:pre-wrap>Adler Planetarium              </span></td><td><span style=white-space:pre-wrap>13431       </span></td><td>41.88096</td><td>-87.61674</td><td>41.86610</td><td>-87.60727</td><td>casual</td></tr>\n",
       "\t<tr><td>71DFF834E1D3CE0B</td><td>classic_bike </td><td>2023-05-06 16:47:22</td><td>2023-05-06 16:52:13</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St               </span></td><td>TA1308000009</td><td><span style=white-space:pre-wrap>Harper Ave &amp; 59th St           </span></td><td>KA1503000070</td><td>41.79521</td><td>-87.58071</td><td>41.78794</td><td>-87.58832</td><td>member</td></tr>\n",
       "\t<tr><td>2117485899B4CEA4</td><td>classic_bike </td><td>2023-05-15 12:47:26</td><td>2023-05-15 13:00:05</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td>TA1309000024</td><td><span style=white-space:pre-wrap>Franklin St &amp; Lake St          </span></td><td>TA1307000111</td><td>41.90799</td><td>-87.63150</td><td>41.88584</td><td>-87.63550</td><td>member</td></tr>\n",
       "\t<tr><td>811149F69AAE82DD</td><td>electric_bike</td><td>2023-05-19 05:44:26</td><td>2023-05-19 05:47:24</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St       </span></td><td>KA1503000043</td><td>41.88265</td><td>-87.64144</td><td>41.88918</td><td>-87.63851</td><td>member</td></tr>\n",
       "\t<tr><td>D71F8A3BB45BDA05</td><td>classic_bike </td><td>2023-05-13 17:37:12</td><td>2023-05-13 17:43:27</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St       </span></td><td>KA1503000043</td><td>41.88275</td><td>-87.64119</td><td>41.88918</td><td>-87.63851</td><td>member</td></tr>\n",
       "\t<tr><td>B0E352E3CE2B6EE9</td><td>classic_bike </td><td>2023-05-05 06:28:09</td><td>2023-05-05 06:55:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td>TA1309000024</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St          </span></td><td><span style=white-space:pre-wrap>623         </span></td><td>41.90799</td><td>-87.63150</td><td>41.87277</td><td>-87.62398</td><td>member</td></tr>\n",
       "\t<tr><td>1348715B463F6610</td><td>classic_bike </td><td>2023-05-15 06:37:34</td><td>2023-05-15 07:01:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td>TA1309000024</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St          </span></td><td><span style=white-space:pre-wrap>623         </span></td><td>41.90799</td><td>-87.63150</td><td>41.87277</td><td>-87.62398</td><td>member</td></tr>\n",
       "\t<tr><td>22FD33836A76B947</td><td>classic_bike </td><td>2023-05-18 20:35:00</td><td>2023-05-18 20:47:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td>TA1309000024</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Division St      </span></td><td>KA1504000079</td><td>41.90799</td><td>-87.63150</td><td>41.90349</td><td>-87.64335</td><td>member</td></tr>\n",
       "\t<tr><td>A59A47089DBA82F4</td><td>electric_bike</td><td>2023-05-13 18:11:25</td><td>2023-05-13 18:42:47</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St         </span></td><td>TA1305000029</td><td>41.88265</td><td>-87.64095</td><td>41.88462</td><td>-87.62783</td><td>casual</td></tr>\n",
       "\t<tr><td>0604AB197D201117</td><td>electric_bike</td><td>2023-05-29 06:19:30</td><td>2023-05-29 06:39:50</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd    </span></td><td>TA1309000002</td><td>41.88105</td><td>-87.61675</td><td>41.87785</td><td>-87.62408</td><td>casual</td></tr>\n",
       "\t<tr><td>AA261364E7500CD1</td><td>classic_bike </td><td>2023-05-29 17:08:05</td><td>2023-05-29 17:51:59</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Blackhawk St       </span></td><td><span style=white-space:pre-wrap>13224       </span></td><td><span style=white-space:pre-wrap>Stave St &amp; Armitage Ave        </span></td><td><span style=white-space:pre-wrap>13266       </span></td><td>41.90707</td><td>-87.66725</td><td>41.91774</td><td>-87.69139</td><td>member</td></tr>\n",
       "\t<tr><td>6DB13FAE5B7A3673</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-28 20:16:34</td><td>2023-05-28 22:58:20</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd    </span></td><td>TA1309000002</td><td>41.88096</td><td>-87.61674</td><td>41.87785</td><td>-87.62408</td><td>casual</td></tr>\n",
       "\t<tr><td>B02E54E6F7E987CE</td><td>electric_bike</td><td>2023-05-18 13:10:29</td><td>2023-05-18 13:17:32</td><td><span style=white-space:pre-wrap>Benson Ave &amp; Church St           </span></td><td><span style=white-space:pre-wrap>596         </span></td><td><span style=white-space:pre-wrap>Evanston Civic Center          </span></td><td><span style=white-space:pre-wrap>661         </span></td><td>42.04823</td><td>-87.68349</td><td>42.05704</td><td>-87.68655</td><td>member</td></tr>\n",
       "\t<tr><td>09732545D9374E17</td><td>classic_bike </td><td>2023-05-29 22:12:34</td><td>2023-05-29 22:29:37</td><td><span style=white-space:pre-wrap>Clifton Ave &amp; Armitage Ave       </span></td><td>TA1307000163</td><td><span style=white-space:pre-wrap>Clark St &amp; Wellington Ave      </span></td><td>TA1307000136</td><td>41.91822</td><td>-87.65694</td><td>41.93650</td><td>-87.64754</td><td>member</td></tr>\n",
       "\t<tr><td>2A979757D6205BF8</td><td>electric_bike</td><td>2023-05-06 20:46:13</td><td>2023-05-06 20:57:38</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; North Ave          </span></td><td>TA1307000038</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St         </span></td><td>TA1309000025</td><td>41.91132</td><td>-87.63872</td><td>41.94367</td><td>-87.64895</td><td>member</td></tr>\n",
       "\t<tr><td>2471A931E49C9577</td><td>classic_bike </td><td>2023-05-26 18:41:13</td><td>2023-05-26 19:01:24</td><td><span style=white-space:pre-wrap>Broadway &amp; Belmont Ave           </span></td><td><span style=white-space:pre-wrap>13277       </span></td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St         </span></td><td>TA1309000025</td><td>41.94011</td><td>-87.64545</td><td>41.94367</td><td>-87.64895</td><td>member</td></tr>\n",
       "\t<tr><td>7A3C84F9FDC88B8A</td><td>classic_bike </td><td>2023-05-23 13:44:35</td><td>2023-05-23 13:59:36</td><td><span style=white-space:pre-wrap>Spaulding Ave &amp; Armitage Ave     </span></td><td><span style=white-space:pre-wrap>15650       </span></td><td><span style=white-space:pre-wrap>Walsh Park                     </span></td><td><span style=white-space:pre-wrap>18067       </span></td><td>41.91711</td><td>-87.71022</td><td>41.91461</td><td>-87.66797</td><td>member</td></tr>\n",
       "\t<tr><td>08E60474BB77A09F</td><td>classic_bike </td><td>2023-05-30 20:35:26</td><td>2023-05-30 20:39:35</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Illinois St         </span></td><td><span style=white-space:pre-wrap>13430       </span></td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave         </span></td><td>TA1307000117</td><td>41.89076</td><td>-87.63170</td><td>41.89147</td><td>-87.62676</td><td>member</td></tr>\n",
       "\t<tr><td>7EE50FF1E3B1160A</td><td>electric_bike</td><td>2023-05-28 21:53:01</td><td>2023-05-28 22:05:33</td><td><span style=white-space:pre-wrap>Troy St &amp; North Ave              </span></td><td><span style=white-space:pre-wrap>15653       </span></td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Fullerton Ave  </span></td><td><span style=white-space:pre-wrap>428         </span></td><td>41.90979</td><td>-87.70530</td><td>41.92467</td><td>-87.70055</td><td>member</td></tr>\n",
       "\t<tr><td>C7455E1721AA4064</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-27 11:14:09</td><td>2023-05-27 11:41:23</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St   </span></td><td><span style=white-space:pre-wrap>13001       </span></td><td>41.88096</td><td>-87.61674</td><td>41.88398</td><td>-87.62468</td><td>casual</td></tr>\n",
       "\t<tr><td>3EE3C51D01AF833E</td><td>classic_bike </td><td>2023-05-18 08:39:49</td><td>2023-05-18 08:48:48</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Franklin St &amp; Chicago Ave      </span></td><td><span style=white-space:pre-wrap>13017       </span></td><td>41.88275</td><td>-87.64119</td><td>41.89675</td><td>-87.63567</td><td>member</td></tr>\n",
       "\t<tr><td>8706010AD2367F04</td><td>classic_bike </td><td>2023-05-09 10:26:45</td><td>2023-05-09 10:34:08</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St   </span></td><td><span style=white-space:pre-wrap>13001       </span></td><td>41.88275</td><td>-87.64119</td><td>41.88398</td><td>-87.62468</td><td>member</td></tr>\n",
       "\t<tr><td>68DA3F41B67D2B2D</td><td>electric_bike</td><td>2023-05-13 16:11:36</td><td>2023-05-13 17:00:02</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td>Lakefront Trail &amp; Bryn Mawr Ave</td><td><span style=white-space:pre-wrap>15576       </span></td><td>41.88109</td><td>-87.61681</td><td>41.98404</td><td>-87.65228</td><td>casual</td></tr>\n",
       "\t<tr><td>D97B7202D327A6F9</td><td>electric_bike</td><td>2023-05-18 21:31:29</td><td>2023-05-18 21:43:15</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td>TA1309000024</td><td><span style=white-space:pre-wrap>Clark St &amp; Wrightwood Ave      </span></td><td>TA1305000014</td><td>41.90811</td><td>-87.63157</td><td>41.92955</td><td>-87.64312</td><td>member</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>B551550A604296FE</td><td>electric_bike</td><td>2024-04-22 16:35:13</td><td>2024-04-22 16:48:26</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91571</td><td>-87.63458</td><td>41.94000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>A480C5E65CDCF2DD</td><td>electric_bike</td><td>2024-04-15 16:29:49</td><td>2024-04-15 17:02:51</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>17660       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.90035</td><td>-87.69687</td><td>41.91000</td><td>-87.69000</td><td>member</td></tr>\n",
       "\t<tr><td>89C2860E60382E7A</td><td>electric_bike</td><td>2024-04-09 07:57:29</td><td>2024-04-09 08:26:28</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88309</td><td>-87.64133</td><td>41.89000</td><td>-87.63000</td><td>member</td></tr>\n",
       "\t<tr><td>83A2875F5548B22F</td><td>electric_bike</td><td>2024-04-06 19:30:49</td><td>2024-04-06 19:32:17</td><td>Ashland Ave &amp; Wellington Ave</td><td><span style=white-space:pre-wrap>13269       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.93610</td><td>-87.66995</td><td>41.94000</td><td>-87.67000</td><td>member</td></tr>\n",
       "\t<tr><td>34DB0C2D927BC247</td><td>electric_bike</td><td>2024-04-22 18:33:37</td><td>2024-04-22 19:05:28</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave    </span></td><td>TA1305000003</td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.89180</td><td>-87.62079</td><td>41.92000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>14E9E84DB6E7A386</td><td>electric_bike</td><td>2024-04-13 09:55:05</td><td>2024-04-13 10:01:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91574</td><td>-87.63461</td><td>41.91000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>4CE42998228F42BD</td><td>electric_bike</td><td>2024-04-16 16:54:25</td><td>2024-04-16 17:06:39</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88327</td><td>-87.64114</td><td>41.91000</td><td>-87.63000</td><td>member</td></tr>\n",
       "\t<tr><td>B85A53D7FB63D58F</td><td>electric_bike</td><td>2024-04-08 16:19:23</td><td>2024-04-08 16:29:02</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88333</td><td>-87.64120</td><td>41.90000</td><td>-87.66000</td><td>member</td></tr>\n",
       "\t<tr><td>F1D8223B278CC353</td><td>electric_bike</td><td>2024-04-24 18:06:16</td><td>2024-04-24 18:10:23</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88345</td><td>-87.64155</td><td>41.89000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>4FC3C6A2E96029BF</td><td>electric_bike</td><td>2024-04-24 07:37:42</td><td>2024-04-24 07:48:27</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St      </span></td><td>TA1307000124</td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.86414</td><td>-87.62360</td><td>41.88000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>908FB46F1500AB06</td><td>electric_bike</td><td>2024-04-09 10:00:55</td><td>2024-04-09 10:05:17</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88343</td><td>-87.64155</td><td>41.88000</td><td>-87.63000</td><td>member</td></tr>\n",
       "\t<tr><td>5C01F81F2F64760F</td><td>electric_bike</td><td>2024-04-18 22:48:38</td><td>2024-04-18 22:53:38</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td>KA1504000143</td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.94662</td><td>-87.68336</td><td>41.94000</td><td>-87.67000</td><td>member</td></tr>\n",
       "\t<tr><td>00844D73F05E2683</td><td>electric_bike</td><td>2024-04-24 17:03:18</td><td>2024-04-24 17:08:04</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave    </span></td><td>TA1305000003</td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.89190</td><td>-87.62037</td><td>41.90000</td><td>-87.63000</td><td>member</td></tr>\n",
       "\t<tr><td>DC7B3F4354212627</td><td>electric_bike</td><td>2024-04-03 18:09:41</td><td>2024-04-03 18:15:10</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88320</td><td>-87.64136</td><td>41.89000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>BE0651110A99612F</td><td>electric_bike</td><td>2024-04-03 16:45:07</td><td>2024-04-03 16:49:59</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St      </span></td><td>TA1307000124</td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.86425</td><td>-87.62380</td><td>41.85000</td><td>-87.63000</td><td>member</td></tr>\n",
       "\t<tr><td>BE0071DAECD43073</td><td>electric_bike</td><td>2024-04-12 15:02:53</td><td>2024-04-12 15:05:50</td><td>Ashland Ave &amp; Wellington Ave</td><td><span style=white-space:pre-wrap>13269       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.93610</td><td>-87.66994</td><td>41.94000</td><td>-87.67000</td><td>member</td></tr>\n",
       "\t<tr><td>291B570C91B7259B</td><td>electric_bike</td><td>2024-04-03 18:01:29</td><td>2024-04-03 18:06:09</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88324</td><td>-87.64116</td><td>41.88000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>86BFB9971EB78EDD</td><td>electric_bike</td><td>2024-04-08 05:40:20</td><td>2024-04-08 05:44:41</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88348</td><td>-87.64133</td><td>41.89000</td><td>-87.65000</td><td>member</td></tr>\n",
       "\t<tr><td>0C8EDF776A6A2180</td><td>electric_bike</td><td>2024-04-08 17:38:51</td><td>2024-04-08 17:49:15</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88361</td><td>-87.64115</td><td>41.90000</td><td>-87.67000</td><td>member</td></tr>\n",
       "\t<tr><td>A760201A6D54480C</td><td>electric_bike</td><td>2024-04-08 11:23:04</td><td>2024-04-08 11:34:48</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91579</td><td>-87.63463</td><td>41.94000</td><td>-87.66000</td><td>member</td></tr>\n",
       "\t<tr><td>13D14F27E1E19AAA</td><td>electric_bike</td><td>2024-04-19 18:30:17</td><td>2024-04-19 18:30:38</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88355</td><td>-87.64185</td><td>41.88000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>A6DB0B5563A4551D</td><td>electric_bike</td><td>2024-04-06 04:55:39</td><td>2024-04-06 05:01:06</td><td>Ashland Ave &amp; Wellington Ave</td><td><span style=white-space:pre-wrap>13269       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.93608</td><td>-87.66986</td><td>41.95000</td><td>-87.68000</td><td>member</td></tr>\n",
       "\t<tr><td>1C6412CE12F75BB2</td><td>electric_bike</td><td>2024-04-27 12:32:06</td><td>2024-04-27 12:54:13</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91571</td><td>-87.63455</td><td>41.93000</td><td>-87.70000</td><td>member</td></tr>\n",
       "\t<tr><td>6D5A8C5C93815E56</td><td>electric_bike</td><td>2024-04-27 04:55:25</td><td>2024-04-27 05:00:20</td><td>Ashland Ave &amp; Wellington Ave</td><td><span style=white-space:pre-wrap>13269       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.93608</td><td>-87.66986</td><td>41.95000</td><td>-87.68000</td><td>member</td></tr>\n",
       "\t<tr><td>5CE1D1529C834AD3</td><td>electric_bike</td><td>2024-04-06 09:27:18</td><td>2024-04-06 09:38:11</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91579</td><td>-87.63458</td><td>41.94000</td><td>-87.64000</td><td>member</td></tr>\n",
       "\t<tr><td>5E41443305C3B8A0</td><td>classic_bike </td><td>2024-04-06 13:40:56</td><td>2024-04-07 14:40:49</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td><span style=white-space:pre-wrap>13179       </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.91569</td><td>-87.63460</td><td><span style=white-space:pre-wrap>      NA</span></td><td><span style=white-space:pre-wrap>       NA</span></td><td>casual</td></tr>\n",
       "\t<tr><td>50A275230D6C0492</td><td>classic_bike </td><td>2024-04-01 19:03:43</td><td>2024-04-01 19:13:16</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>17660       </span></td><td>California Ave &amp; Milwaukee Ave</td><td>13084</td><td>41.90036</td><td>-87.69670</td><td>41.92269</td><td>-87.69715</td><td>member</td></tr>\n",
       "\t<tr><td>A88F756403FBF27F</td><td>electric_bike</td><td>2024-04-11 16:09:50</td><td>2024-04-11 16:26:07</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88350</td><td>-87.64158</td><td>41.91000</td><td>-87.68000</td><td>member</td></tr>\n",
       "\t<tr><td>DFD402AC5915F136</td><td>electric_bike</td><td>2024-04-19 07:20:28</td><td>2024-04-19 07:30:05</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88317</td><td>-87.64113</td><td>41.89000</td><td>-87.62000</td><td>member</td></tr>\n",
       "\t<tr><td>61F035E8DCBB5313</td><td>electric_bike</td><td>2024-04-16 15:53:32</td><td>2024-04-16 16:15:20</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>WL-012      </span></td><td><span style=white-space:pre-wrap>                              </span></td><td><span style=white-space:pre-wrap>     </span></td><td>41.88339</td><td>-87.64122</td><td>41.92000</td><td>-87.66000</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 5738612 × 13\n",
       "\\begin{tabular}{lllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       " <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 0D9FA920C3062031 & electric\\_bike & 2023-05-07 19:53:48 & 2023-05-07 19:58:32 & Southport Ave \\& Belmont Ave       & 13229        &                                 &              & 41.93941 & -87.66383 & 41.93000 & -87.65000 & member\\\\\n",
       "\t 92485E5FB5888ACD & electric\\_bike & 2023-05-06 18:54:08 & 2023-05-06 19:03:35 & Southport Ave \\& Belmont Ave       & 13229        &                                 &              & 41.93948 & -87.66385 & 41.94000 & -87.69000 & member\\\\\n",
       "\t FB144B3FC8300187 & electric\\_bike & 2023-05-21 00:40:21 & 2023-05-21 00:44:36 & Halsted St \\& 21st St              & 13162        &                                 &              & 41.85379 & -87.64672 & 41.86000 & -87.65000 & member\\\\\n",
       "\t DDEB93BC2CE9AA77 & classic\\_bike  & 2023-05-10 16:47:01 & 2023-05-10 16:59:52 & Carpenter St \\& Huron St           & 13196        & Damen Ave \\& Cortland St         & 13133        & 41.89456 & -87.65345 & 41.91598 & -87.67733 & member\\\\\n",
       "\t C07B70172FC92F59 & classic\\_bike  & 2023-05-09 18:30:34 & 2023-05-09 18:39:28 & Southport Ave \\& Clark St          & TA1308000047 & Southport Ave \\& Belmont Ave     & 13229        & 41.95708 & -87.66420 & 41.93948 & -87.66375 & member\\\\\n",
       "\t 2BA66385DF8F815A & classic\\_bike  & 2023-05-30 15:01:21 & 2023-05-30 15:17:00 & Clinton St \\& Madison St           & TA1305000032 & McClurg Ct \\& Ohio St            & TA1306000029 & 41.88275 & -87.64119 & 41.89259 & -87.61729 & member\\\\\n",
       "\t 31EFCCB05F12D8EF & docked\\_bike   & 2023-05-09 14:13:40 & 2023-05-09 14:47:20 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Adler Planetarium               & 13431        & 41.88096 & -87.61674 & 41.86610 & -87.60727 & casual\\\\\n",
       "\t 71DFF834E1D3CE0B & classic\\_bike  & 2023-05-06 16:47:22 & 2023-05-06 16:52:13 & Shore Dr \\& 55th St                & TA1308000009 & Harper Ave \\& 59th St            & KA1503000070 & 41.79521 & -87.58071 & 41.78794 & -87.58832 & member\\\\\n",
       "\t 2117485899B4CEA4 & classic\\_bike  & 2023-05-15 12:47:26 & 2023-05-15 13:00:05 & Clark St \\& Schiller St            & TA1309000024 & Franklin St \\& Lake St           & TA1307000111 & 41.90799 & -87.63150 & 41.88584 & -87.63550 & member\\\\\n",
       "\t 811149F69AAE82DD & electric\\_bike & 2023-05-19 05:44:26 & 2023-05-19 05:47:24 & Clinton St \\& Madison St           & TA1305000032 & Kingsbury St \\& Kinzie St        & KA1503000043 & 41.88265 & -87.64144 & 41.88918 & -87.63851 & member\\\\\n",
       "\t D71F8A3BB45BDA05 & classic\\_bike  & 2023-05-13 17:37:12 & 2023-05-13 17:43:27 & Clinton St \\& Madison St           & TA1305000032 & Kingsbury St \\& Kinzie St        & KA1503000043 & 41.88275 & -87.64119 & 41.88918 & -87.63851 & member\\\\\n",
       "\t B0E352E3CE2B6EE9 & classic\\_bike  & 2023-05-05 06:28:09 & 2023-05-05 06:55:51 & Clark St \\& Schiller St            & TA1309000024 & Michigan Ave \\& 8th St           & 623          & 41.90799 & -87.63150 & 41.87277 & -87.62398 & member\\\\\n",
       "\t 1348715B463F6610 & classic\\_bike  & 2023-05-15 06:37:34 & 2023-05-15 07:01:51 & Clark St \\& Schiller St            & TA1309000024 & Michigan Ave \\& 8th St           & 623          & 41.90799 & -87.63150 & 41.87277 & -87.62398 & member\\\\\n",
       "\t 22FD33836A76B947 & classic\\_bike  & 2023-05-18 20:35:00 & 2023-05-18 20:47:51 & Clark St \\& Schiller St            & TA1309000024 & Larrabee St \\& Division St       & KA1504000079 & 41.90799 & -87.63150 & 41.90349 & -87.64335 & member\\\\\n",
       "\t A59A47089DBA82F4 & electric\\_bike & 2023-05-13 18:11:25 & 2023-05-13 18:42:47 & Clinton St \\& Madison St           & TA1305000032 & State St \\& Randolph St          & TA1305000029 & 41.88265 & -87.64095 & 41.88462 & -87.62783 & casual\\\\\n",
       "\t 0604AB197D201117 & electric\\_bike & 2023-05-29 06:19:30 & 2023-05-29 06:39:50 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Michigan Ave \\& Jackson Blvd     & TA1309000002 & 41.88105 & -87.61675 & 41.87785 & -87.62408 & casual\\\\\n",
       "\t AA261364E7500CD1 & classic\\_bike  & 2023-05-29 17:08:05 & 2023-05-29 17:51:59 & Ashland Ave \\& Blackhawk St        & 13224        & Stave St \\& Armitage Ave         & 13266        & 41.90707 & -87.66725 & 41.91774 & -87.69139 & member\\\\\n",
       "\t 6DB13FAE5B7A3673 & docked\\_bike   & 2023-05-28 20:16:34 & 2023-05-28 22:58:20 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Michigan Ave \\& Jackson Blvd     & TA1309000002 & 41.88096 & -87.61674 & 41.87785 & -87.62408 & casual\\\\\n",
       "\t B02E54E6F7E987CE & electric\\_bike & 2023-05-18 13:10:29 & 2023-05-18 13:17:32 & Benson Ave \\& Church St            & 596          & Evanston Civic Center           & 661          & 42.04823 & -87.68349 & 42.05704 & -87.68655 & member\\\\\n",
       "\t 09732545D9374E17 & classic\\_bike  & 2023-05-29 22:12:34 & 2023-05-29 22:29:37 & Clifton Ave \\& Armitage Ave        & TA1307000163 & Clark St \\& Wellington Ave       & TA1307000136 & 41.91822 & -87.65694 & 41.93650 & -87.64754 & member\\\\\n",
       "\t 2A979757D6205BF8 & electric\\_bike & 2023-05-06 20:46:13 & 2023-05-06 20:57:38 & Sedgwick St \\& North Ave           & TA1307000038 & Halsted St \\& Roscoe St          & TA1309000025 & 41.91132 & -87.63872 & 41.94367 & -87.64895 & member\\\\\n",
       "\t 2471A931E49C9577 & classic\\_bike  & 2023-05-26 18:41:13 & 2023-05-26 19:01:24 & Broadway \\& Belmont Ave            & 13277        & Halsted St \\& Roscoe St          & TA1309000025 & 41.94011 & -87.64545 & 41.94367 & -87.64895 & member\\\\\n",
       "\t 7A3C84F9FDC88B8A & classic\\_bike  & 2023-05-23 13:44:35 & 2023-05-23 13:59:36 & Spaulding Ave \\& Armitage Ave      & 15650        & Walsh Park                      & 18067        & 41.91711 & -87.71022 & 41.91461 & -87.66797 & member\\\\\n",
       "\t 08E60474BB77A09F & classic\\_bike  & 2023-05-30 20:35:26 & 2023-05-30 20:39:35 & LaSalle St \\& Illinois St          & 13430        & Wabash Ave \\& Grand Ave          & TA1307000117 & 41.89076 & -87.63170 & 41.89147 & -87.62676 & member\\\\\n",
       "\t 7EE50FF1E3B1160A & electric\\_bike & 2023-05-28 21:53:01 & 2023-05-28 22:05:33 & Troy St \\& North Ave               & 15653        & Milwaukee Ave \\& Fullerton Ave   & 428          & 41.90979 & -87.70530 & 41.92467 & -87.70055 & member\\\\\n",
       "\t C7455E1721AA4064 & docked\\_bike   & 2023-05-27 11:14:09 & 2023-05-27 11:41:23 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Michigan Ave \\& Washington St    & 13001        & 41.88096 & -87.61674 & 41.88398 & -87.62468 & casual\\\\\n",
       "\t 3EE3C51D01AF833E & classic\\_bike  & 2023-05-18 08:39:49 & 2023-05-18 08:48:48 & Clinton St \\& Madison St           & TA1305000032 & Franklin St \\& Chicago Ave       & 13017        & 41.88275 & -87.64119 & 41.89675 & -87.63567 & member\\\\\n",
       "\t 8706010AD2367F04 & classic\\_bike  & 2023-05-09 10:26:45 & 2023-05-09 10:34:08 & Clinton St \\& Madison St           & TA1305000032 & Michigan Ave \\& Washington St    & 13001        & 41.88275 & -87.64119 & 41.88398 & -87.62468 & member\\\\\n",
       "\t 68DA3F41B67D2B2D & electric\\_bike & 2023-05-13 16:11:36 & 2023-05-13 17:00:02 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Lakefront Trail \\& Bryn Mawr Ave & 15576        & 41.88109 & -87.61681 & 41.98404 & -87.65228 & casual\\\\\n",
       "\t D97B7202D327A6F9 & electric\\_bike & 2023-05-18 21:31:29 & 2023-05-18 21:43:15 & Clark St \\& Schiller St            & TA1309000024 & Clark St \\& Wrightwood Ave       & TA1305000014 & 41.90811 & -87.63157 & 41.92955 & -87.64312 & member\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t B551550A604296FE & electric\\_bike & 2024-04-22 16:35:13 & 2024-04-22 16:48:26 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91571 & -87.63458 & 41.94000 & -87.64000 & member\\\\\n",
       "\t A480C5E65CDCF2DD & electric\\_bike & 2024-04-15 16:29:49 & 2024-04-15 17:02:51 & California Ave \\& Cortez St   & 17660        &                                &       & 41.90035 & -87.69687 & 41.91000 & -87.69000 & member\\\\\n",
       "\t 89C2860E60382E7A & electric\\_bike & 2024-04-09 07:57:29 & 2024-04-09 08:26:28 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88309 & -87.64133 & 41.89000 & -87.63000 & member\\\\\n",
       "\t 83A2875F5548B22F & electric\\_bike & 2024-04-06 19:30:49 & 2024-04-06 19:32:17 & Ashland Ave \\& Wellington Ave & 13269        &                                &       & 41.93610 & -87.66995 & 41.94000 & -87.67000 & member\\\\\n",
       "\t 34DB0C2D927BC247 & electric\\_bike & 2024-04-22 18:33:37 & 2024-04-22 19:05:28 & Fairbanks Ct \\& Grand Ave     & TA1305000003 &                                &       & 41.89180 & -87.62079 & 41.92000 & -87.64000 & member\\\\\n",
       "\t 14E9E84DB6E7A386 & electric\\_bike & 2024-04-13 09:55:05 & 2024-04-13 10:01:51 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91574 & -87.63461 & 41.91000 & -87.64000 & member\\\\\n",
       "\t 4CE42998228F42BD & electric\\_bike & 2024-04-16 16:54:25 & 2024-04-16 17:06:39 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88327 & -87.64114 & 41.91000 & -87.63000 & member\\\\\n",
       "\t B85A53D7FB63D58F & electric\\_bike & 2024-04-08 16:19:23 & 2024-04-08 16:29:02 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88333 & -87.64120 & 41.90000 & -87.66000 & member\\\\\n",
       "\t F1D8223B278CC353 & electric\\_bike & 2024-04-24 18:06:16 & 2024-04-24 18:10:23 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88345 & -87.64155 & 41.89000 & -87.64000 & member\\\\\n",
       "\t 4FC3C6A2E96029BF & electric\\_bike & 2024-04-24 07:37:42 & 2024-04-24 07:48:27 & Michigan Ave \\& 14th St       & TA1307000124 &                                &       & 41.86414 & -87.62360 & 41.88000 & -87.64000 & member\\\\\n",
       "\t 908FB46F1500AB06 & electric\\_bike & 2024-04-09 10:00:55 & 2024-04-09 10:05:17 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88343 & -87.64155 & 41.88000 & -87.63000 & member\\\\\n",
       "\t 5C01F81F2F64760F & electric\\_bike & 2024-04-18 22:48:38 & 2024-04-18 22:53:38 & Leavitt St \\& Addison St      & KA1504000143 &                                &       & 41.94662 & -87.68336 & 41.94000 & -87.67000 & member\\\\\n",
       "\t 00844D73F05E2683 & electric\\_bike & 2024-04-24 17:03:18 & 2024-04-24 17:08:04 & Fairbanks Ct \\& Grand Ave     & TA1305000003 &                                &       & 41.89190 & -87.62037 & 41.90000 & -87.63000 & member\\\\\n",
       "\t DC7B3F4354212627 & electric\\_bike & 2024-04-03 18:09:41 & 2024-04-03 18:15:10 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88320 & -87.64136 & 41.89000 & -87.64000 & member\\\\\n",
       "\t BE0651110A99612F & electric\\_bike & 2024-04-03 16:45:07 & 2024-04-03 16:49:59 & Michigan Ave \\& 14th St       & TA1307000124 &                                &       & 41.86425 & -87.62380 & 41.85000 & -87.63000 & member\\\\\n",
       "\t BE0071DAECD43073 & electric\\_bike & 2024-04-12 15:02:53 & 2024-04-12 15:05:50 & Ashland Ave \\& Wellington Ave & 13269        &                                &       & 41.93610 & -87.66994 & 41.94000 & -87.67000 & member\\\\\n",
       "\t 291B570C91B7259B & electric\\_bike & 2024-04-03 18:01:29 & 2024-04-03 18:06:09 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88324 & -87.64116 & 41.88000 & -87.64000 & member\\\\\n",
       "\t 86BFB9971EB78EDD & electric\\_bike & 2024-04-08 05:40:20 & 2024-04-08 05:44:41 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88348 & -87.64133 & 41.89000 & -87.65000 & member\\\\\n",
       "\t 0C8EDF776A6A2180 & electric\\_bike & 2024-04-08 17:38:51 & 2024-04-08 17:49:15 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88361 & -87.64115 & 41.90000 & -87.67000 & member\\\\\n",
       "\t A760201A6D54480C & electric\\_bike & 2024-04-08 11:23:04 & 2024-04-08 11:34:48 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91579 & -87.63463 & 41.94000 & -87.66000 & member\\\\\n",
       "\t 13D14F27E1E19AAA & electric\\_bike & 2024-04-19 18:30:17 & 2024-04-19 18:30:38 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88355 & -87.64185 & 41.88000 & -87.64000 & member\\\\\n",
       "\t A6DB0B5563A4551D & electric\\_bike & 2024-04-06 04:55:39 & 2024-04-06 05:01:06 & Ashland Ave \\& Wellington Ave & 13269        &                                &       & 41.93608 & -87.66986 & 41.95000 & -87.68000 & member\\\\\n",
       "\t 1C6412CE12F75BB2 & electric\\_bike & 2024-04-27 12:32:06 & 2024-04-27 12:54:13 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91571 & -87.63455 & 41.93000 & -87.70000 & member\\\\\n",
       "\t 6D5A8C5C93815E56 & electric\\_bike & 2024-04-27 04:55:25 & 2024-04-27 05:00:20 & Ashland Ave \\& Wellington Ave & 13269        &                                &       & 41.93608 & -87.66986 & 41.95000 & -87.68000 & member\\\\\n",
       "\t 5CE1D1529C834AD3 & electric\\_bike & 2024-04-06 09:27:18 & 2024-04-06 09:38:11 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91579 & -87.63458 & 41.94000 & -87.64000 & member\\\\\n",
       "\t 5E41443305C3B8A0 & classic\\_bike  & 2024-04-06 13:40:56 & 2024-04-07 14:40:49 & Clark St \\& Lincoln Ave       & 13179        &                                &       & 41.91569 & -87.63460 &       NA &        NA & casual\\\\\n",
       "\t 50A275230D6C0492 & classic\\_bike  & 2024-04-01 19:03:43 & 2024-04-01 19:13:16 & California Ave \\& Cortez St   & 17660        & California Ave \\& Milwaukee Ave & 13084 & 41.90036 & -87.69670 & 41.92269 & -87.69715 & member\\\\\n",
       "\t A88F756403FBF27F & electric\\_bike & 2024-04-11 16:09:50 & 2024-04-11 16:26:07 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88350 & -87.64158 & 41.91000 & -87.68000 & member\\\\\n",
       "\t DFD402AC5915F136 & electric\\_bike & 2024-04-19 07:20:28 & 2024-04-19 07:30:05 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88317 & -87.64113 & 41.89000 & -87.62000 & member\\\\\n",
       "\t 61F035E8DCBB5313 & electric\\_bike & 2024-04-16 15:53:32 & 2024-04-16 16:15:20 & Clinton St \\& Washington Blvd & WL-012       &                                &       & 41.88339 & -87.64122 & 41.92000 & -87.66000 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 5738612 × 13\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 0D9FA920C3062031 | electric_bike | 2023-05-07 19:53:48 | 2023-05-07 19:58:32 | Southport Ave &amp; Belmont Ave       | 13229        | <!----> | <!----> | 41.93941 | -87.66383 | 41.93000 | -87.65000 | member |\n",
       "| 92485E5FB5888ACD | electric_bike | 2023-05-06 18:54:08 | 2023-05-06 19:03:35 | Southport Ave &amp; Belmont Ave       | 13229        | <!----> | <!----> | 41.93948 | -87.66385 | 41.94000 | -87.69000 | member |\n",
       "| FB144B3FC8300187 | electric_bike | 2023-05-21 00:40:21 | 2023-05-21 00:44:36 | Halsted St &amp; 21st St              | 13162        | <!----> | <!----> | 41.85379 | -87.64672 | 41.86000 | -87.65000 | member |\n",
       "| DDEB93BC2CE9AA77 | classic_bike  | 2023-05-10 16:47:01 | 2023-05-10 16:59:52 | Carpenter St &amp; Huron St           | 13196        | Damen Ave &amp; Cortland St         | 13133        | 41.89456 | -87.65345 | 41.91598 | -87.67733 | member |\n",
       "| C07B70172FC92F59 | classic_bike  | 2023-05-09 18:30:34 | 2023-05-09 18:39:28 | Southport Ave &amp; Clark St          | TA1308000047 | Southport Ave &amp; Belmont Ave     | 13229        | 41.95708 | -87.66420 | 41.93948 | -87.66375 | member |\n",
       "| 2BA66385DF8F815A | classic_bike  | 2023-05-30 15:01:21 | 2023-05-30 15:17:00 | Clinton St &amp; Madison St           | TA1305000032 | McClurg Ct &amp; Ohio St            | TA1306000029 | 41.88275 | -87.64119 | 41.89259 | -87.61729 | member |\n",
       "| 31EFCCB05F12D8EF | docked_bike   | 2023-05-09 14:13:40 | 2023-05-09 14:47:20 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Adler Planetarium               | 13431        | 41.88096 | -87.61674 | 41.86610 | -87.60727 | casual |\n",
       "| 71DFF834E1D3CE0B | classic_bike  | 2023-05-06 16:47:22 | 2023-05-06 16:52:13 | Shore Dr &amp; 55th St                | TA1308000009 | Harper Ave &amp; 59th St            | KA1503000070 | 41.79521 | -87.58071 | 41.78794 | -87.58832 | member |\n",
       "| 2117485899B4CEA4 | classic_bike  | 2023-05-15 12:47:26 | 2023-05-15 13:00:05 | Clark St &amp; Schiller St            | TA1309000024 | Franklin St &amp; Lake St           | TA1307000111 | 41.90799 | -87.63150 | 41.88584 | -87.63550 | member |\n",
       "| 811149F69AAE82DD | electric_bike | 2023-05-19 05:44:26 | 2023-05-19 05:47:24 | Clinton St &amp; Madison St           | TA1305000032 | Kingsbury St &amp; Kinzie St        | KA1503000043 | 41.88265 | -87.64144 | 41.88918 | -87.63851 | member |\n",
       "| D71F8A3BB45BDA05 | classic_bike  | 2023-05-13 17:37:12 | 2023-05-13 17:43:27 | Clinton St &amp; Madison St           | TA1305000032 | Kingsbury St &amp; Kinzie St        | KA1503000043 | 41.88275 | -87.64119 | 41.88918 | -87.63851 | member |\n",
       "| B0E352E3CE2B6EE9 | classic_bike  | 2023-05-05 06:28:09 | 2023-05-05 06:55:51 | Clark St &amp; Schiller St            | TA1309000024 | Michigan Ave &amp; 8th St           | 623          | 41.90799 | -87.63150 | 41.87277 | -87.62398 | member |\n",
       "| 1348715B463F6610 | classic_bike  | 2023-05-15 06:37:34 | 2023-05-15 07:01:51 | Clark St &amp; Schiller St            | TA1309000024 | Michigan Ave &amp; 8th St           | 623          | 41.90799 | -87.63150 | 41.87277 | -87.62398 | member |\n",
       "| 22FD33836A76B947 | classic_bike  | 2023-05-18 20:35:00 | 2023-05-18 20:47:51 | Clark St &amp; Schiller St            | TA1309000024 | Larrabee St &amp; Division St       | KA1504000079 | 41.90799 | -87.63150 | 41.90349 | -87.64335 | member |\n",
       "| A59A47089DBA82F4 | electric_bike | 2023-05-13 18:11:25 | 2023-05-13 18:42:47 | Clinton St &amp; Madison St           | TA1305000032 | State St &amp; Randolph St          | TA1305000029 | 41.88265 | -87.64095 | 41.88462 | -87.62783 | casual |\n",
       "| 0604AB197D201117 | electric_bike | 2023-05-29 06:19:30 | 2023-05-29 06:39:50 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Michigan Ave &amp; Jackson Blvd     | TA1309000002 | 41.88105 | -87.61675 | 41.87785 | -87.62408 | casual |\n",
       "| AA261364E7500CD1 | classic_bike  | 2023-05-29 17:08:05 | 2023-05-29 17:51:59 | Ashland Ave &amp; Blackhawk St        | 13224        | Stave St &amp; Armitage Ave         | 13266        | 41.90707 | -87.66725 | 41.91774 | -87.69139 | member |\n",
       "| 6DB13FAE5B7A3673 | docked_bike   | 2023-05-28 20:16:34 | 2023-05-28 22:58:20 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Michigan Ave &amp; Jackson Blvd     | TA1309000002 | 41.88096 | -87.61674 | 41.87785 | -87.62408 | casual |\n",
       "| B02E54E6F7E987CE | electric_bike | 2023-05-18 13:10:29 | 2023-05-18 13:17:32 | Benson Ave &amp; Church St            | 596          | Evanston Civic Center           | 661          | 42.04823 | -87.68349 | 42.05704 | -87.68655 | member |\n",
       "| 09732545D9374E17 | classic_bike  | 2023-05-29 22:12:34 | 2023-05-29 22:29:37 | Clifton Ave &amp; Armitage Ave        | TA1307000163 | Clark St &amp; Wellington Ave       | TA1307000136 | 41.91822 | -87.65694 | 41.93650 | -87.64754 | member |\n",
       "| 2A979757D6205BF8 | electric_bike | 2023-05-06 20:46:13 | 2023-05-06 20:57:38 | Sedgwick St &amp; North Ave           | TA1307000038 | Halsted St &amp; Roscoe St          | TA1309000025 | 41.91132 | -87.63872 | 41.94367 | -87.64895 | member |\n",
       "| 2471A931E49C9577 | classic_bike  | 2023-05-26 18:41:13 | 2023-05-26 19:01:24 | Broadway &amp; Belmont Ave            | 13277        | Halsted St &amp; Roscoe St          | TA1309000025 | 41.94011 | -87.64545 | 41.94367 | -87.64895 | member |\n",
       "| 7A3C84F9FDC88B8A | classic_bike  | 2023-05-23 13:44:35 | 2023-05-23 13:59:36 | Spaulding Ave &amp; Armitage Ave      | 15650        | Walsh Park                      | 18067        | 41.91711 | -87.71022 | 41.91461 | -87.66797 | member |\n",
       "| 08E60474BB77A09F | classic_bike  | 2023-05-30 20:35:26 | 2023-05-30 20:39:35 | LaSalle St &amp; Illinois St          | 13430        | Wabash Ave &amp; Grand Ave          | TA1307000117 | 41.89076 | -87.63170 | 41.89147 | -87.62676 | member |\n",
       "| 7EE50FF1E3B1160A | electric_bike | 2023-05-28 21:53:01 | 2023-05-28 22:05:33 | Troy St &amp; North Ave               | 15653        | Milwaukee Ave &amp; Fullerton Ave   | 428          | 41.90979 | -87.70530 | 41.92467 | -87.70055 | member |\n",
       "| C7455E1721AA4064 | docked_bike   | 2023-05-27 11:14:09 | 2023-05-27 11:41:23 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Michigan Ave &amp; Washington St    | 13001        | 41.88096 | -87.61674 | 41.88398 | -87.62468 | casual |\n",
       "| 3EE3C51D01AF833E | classic_bike  | 2023-05-18 08:39:49 | 2023-05-18 08:48:48 | Clinton St &amp; Madison St           | TA1305000032 | Franklin St &amp; Chicago Ave       | 13017        | 41.88275 | -87.64119 | 41.89675 | -87.63567 | member |\n",
       "| 8706010AD2367F04 | classic_bike  | 2023-05-09 10:26:45 | 2023-05-09 10:34:08 | Clinton St &amp; Madison St           | TA1305000032 | Michigan Ave &amp; Washington St    | 13001        | 41.88275 | -87.64119 | 41.88398 | -87.62468 | member |\n",
       "| 68DA3F41B67D2B2D | electric_bike | 2023-05-13 16:11:36 | 2023-05-13 17:00:02 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Lakefront Trail &amp; Bryn Mawr Ave | 15576        | 41.88109 | -87.61681 | 41.98404 | -87.65228 | casual |\n",
       "| D97B7202D327A6F9 | electric_bike | 2023-05-18 21:31:29 | 2023-05-18 21:43:15 | Clark St &amp; Schiller St            | TA1309000024 | Clark St &amp; Wrightwood Ave       | TA1305000014 | 41.90811 | -87.63157 | 41.92955 | -87.64312 | member |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| B551550A604296FE | electric_bike | 2024-04-22 16:35:13 | 2024-04-22 16:48:26 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91571 | -87.63458 | 41.94000 | -87.64000 | member |\n",
       "| A480C5E65CDCF2DD | electric_bike | 2024-04-15 16:29:49 | 2024-04-15 17:02:51 | California Ave &amp; Cortez St   | 17660        | <!----> | <!----> | 41.90035 | -87.69687 | 41.91000 | -87.69000 | member |\n",
       "| 89C2860E60382E7A | electric_bike | 2024-04-09 07:57:29 | 2024-04-09 08:26:28 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88309 | -87.64133 | 41.89000 | -87.63000 | member |\n",
       "| 83A2875F5548B22F | electric_bike | 2024-04-06 19:30:49 | 2024-04-06 19:32:17 | Ashland Ave &amp; Wellington Ave | 13269        | <!----> | <!----> | 41.93610 | -87.66995 | 41.94000 | -87.67000 | member |\n",
       "| 34DB0C2D927BC247 | electric_bike | 2024-04-22 18:33:37 | 2024-04-22 19:05:28 | Fairbanks Ct &amp; Grand Ave     | TA1305000003 | <!----> | <!----> | 41.89180 | -87.62079 | 41.92000 | -87.64000 | member |\n",
       "| 14E9E84DB6E7A386 | electric_bike | 2024-04-13 09:55:05 | 2024-04-13 10:01:51 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91574 | -87.63461 | 41.91000 | -87.64000 | member |\n",
       "| 4CE42998228F42BD | electric_bike | 2024-04-16 16:54:25 | 2024-04-16 17:06:39 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88327 | -87.64114 | 41.91000 | -87.63000 | member |\n",
       "| B85A53D7FB63D58F | electric_bike | 2024-04-08 16:19:23 | 2024-04-08 16:29:02 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88333 | -87.64120 | 41.90000 | -87.66000 | member |\n",
       "| F1D8223B278CC353 | electric_bike | 2024-04-24 18:06:16 | 2024-04-24 18:10:23 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88345 | -87.64155 | 41.89000 | -87.64000 | member |\n",
       "| 4FC3C6A2E96029BF | electric_bike | 2024-04-24 07:37:42 | 2024-04-24 07:48:27 | Michigan Ave &amp; 14th St       | TA1307000124 | <!----> | <!----> | 41.86414 | -87.62360 | 41.88000 | -87.64000 | member |\n",
       "| 908FB46F1500AB06 | electric_bike | 2024-04-09 10:00:55 | 2024-04-09 10:05:17 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88343 | -87.64155 | 41.88000 | -87.63000 | member |\n",
       "| 5C01F81F2F64760F | electric_bike | 2024-04-18 22:48:38 | 2024-04-18 22:53:38 | Leavitt St &amp; Addison St      | KA1504000143 | <!----> | <!----> | 41.94662 | -87.68336 | 41.94000 | -87.67000 | member |\n",
       "| 00844D73F05E2683 | electric_bike | 2024-04-24 17:03:18 | 2024-04-24 17:08:04 | Fairbanks Ct &amp; Grand Ave     | TA1305000003 | <!----> | <!----> | 41.89190 | -87.62037 | 41.90000 | -87.63000 | member |\n",
       "| DC7B3F4354212627 | electric_bike | 2024-04-03 18:09:41 | 2024-04-03 18:15:10 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88320 | -87.64136 | 41.89000 | -87.64000 | member |\n",
       "| BE0651110A99612F | electric_bike | 2024-04-03 16:45:07 | 2024-04-03 16:49:59 | Michigan Ave &amp; 14th St       | TA1307000124 | <!----> | <!----> | 41.86425 | -87.62380 | 41.85000 | -87.63000 | member |\n",
       "| BE0071DAECD43073 | electric_bike | 2024-04-12 15:02:53 | 2024-04-12 15:05:50 | Ashland Ave &amp; Wellington Ave | 13269        | <!----> | <!----> | 41.93610 | -87.66994 | 41.94000 | -87.67000 | member |\n",
       "| 291B570C91B7259B | electric_bike | 2024-04-03 18:01:29 | 2024-04-03 18:06:09 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88324 | -87.64116 | 41.88000 | -87.64000 | member |\n",
       "| 86BFB9971EB78EDD | electric_bike | 2024-04-08 05:40:20 | 2024-04-08 05:44:41 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88348 | -87.64133 | 41.89000 | -87.65000 | member |\n",
       "| 0C8EDF776A6A2180 | electric_bike | 2024-04-08 17:38:51 | 2024-04-08 17:49:15 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88361 | -87.64115 | 41.90000 | -87.67000 | member |\n",
       "| A760201A6D54480C | electric_bike | 2024-04-08 11:23:04 | 2024-04-08 11:34:48 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91579 | -87.63463 | 41.94000 | -87.66000 | member |\n",
       "| 13D14F27E1E19AAA | electric_bike | 2024-04-19 18:30:17 | 2024-04-19 18:30:38 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88355 | -87.64185 | 41.88000 | -87.64000 | member |\n",
       "| A6DB0B5563A4551D | electric_bike | 2024-04-06 04:55:39 | 2024-04-06 05:01:06 | Ashland Ave &amp; Wellington Ave | 13269        | <!----> | <!----> | 41.93608 | -87.66986 | 41.95000 | -87.68000 | member |\n",
       "| 1C6412CE12F75BB2 | electric_bike | 2024-04-27 12:32:06 | 2024-04-27 12:54:13 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91571 | -87.63455 | 41.93000 | -87.70000 | member |\n",
       "| 6D5A8C5C93815E56 | electric_bike | 2024-04-27 04:55:25 | 2024-04-27 05:00:20 | Ashland Ave &amp; Wellington Ave | 13269        | <!----> | <!----> | 41.93608 | -87.66986 | 41.95000 | -87.68000 | member |\n",
       "| 5CE1D1529C834AD3 | electric_bike | 2024-04-06 09:27:18 | 2024-04-06 09:38:11 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91579 | -87.63458 | 41.94000 | -87.64000 | member |\n",
       "| 5E41443305C3B8A0 | classic_bike  | 2024-04-06 13:40:56 | 2024-04-07 14:40:49 | Clark St &amp; Lincoln Ave       | 13179        | <!----> | <!----> | 41.91569 | -87.63460 |       NA |        NA | casual |\n",
       "| 50A275230D6C0492 | classic_bike  | 2024-04-01 19:03:43 | 2024-04-01 19:13:16 | California Ave &amp; Cortez St   | 17660        | California Ave &amp; Milwaukee Ave | 13084 | 41.90036 | -87.69670 | 41.92269 | -87.69715 | member |\n",
       "| A88F756403FBF27F | electric_bike | 2024-04-11 16:09:50 | 2024-04-11 16:26:07 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88350 | -87.64158 | 41.91000 | -87.68000 | member |\n",
       "| DFD402AC5915F136 | electric_bike | 2024-04-19 07:20:28 | 2024-04-19 07:30:05 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88317 | -87.64113 | 41.89000 | -87.62000 | member |\n",
       "| 61F035E8DCBB5313 | electric_bike | 2024-04-16 15:53:32 | 2024-04-16 16:15:20 | Clinton St &amp; Washington Blvd | WL-012       | <!----> | <!----> | 41.88339 | -87.64122 | 41.92000 | -87.66000 | member |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id          rideable_type started_at          ended_at           \n",
       "1       0D9FA920C3062031 electric_bike 2023-05-07 19:53:48 2023-05-07 19:58:32\n",
       "2       92485E5FB5888ACD electric_bike 2023-05-06 18:54:08 2023-05-06 19:03:35\n",
       "3       FB144B3FC8300187 electric_bike 2023-05-21 00:40:21 2023-05-21 00:44:36\n",
       "4       DDEB93BC2CE9AA77 classic_bike  2023-05-10 16:47:01 2023-05-10 16:59:52\n",
       "5       C07B70172FC92F59 classic_bike  2023-05-09 18:30:34 2023-05-09 18:39:28\n",
       "6       2BA66385DF8F815A classic_bike  2023-05-30 15:01:21 2023-05-30 15:17:00\n",
       "7       31EFCCB05F12D8EF docked_bike   2023-05-09 14:13:40 2023-05-09 14:47:20\n",
       "8       71DFF834E1D3CE0B classic_bike  2023-05-06 16:47:22 2023-05-06 16:52:13\n",
       "9       2117485899B4CEA4 classic_bike  2023-05-15 12:47:26 2023-05-15 13:00:05\n",
       "10      811149F69AAE82DD electric_bike 2023-05-19 05:44:26 2023-05-19 05:47:24\n",
       "11      D71F8A3BB45BDA05 classic_bike  2023-05-13 17:37:12 2023-05-13 17:43:27\n",
       "12      B0E352E3CE2B6EE9 classic_bike  2023-05-05 06:28:09 2023-05-05 06:55:51\n",
       "13      1348715B463F6610 classic_bike  2023-05-15 06:37:34 2023-05-15 07:01:51\n",
       "14      22FD33836A76B947 classic_bike  2023-05-18 20:35:00 2023-05-18 20:47:51\n",
       "15      A59A47089DBA82F4 electric_bike 2023-05-13 18:11:25 2023-05-13 18:42:47\n",
       "16      0604AB197D201117 electric_bike 2023-05-29 06:19:30 2023-05-29 06:39:50\n",
       "17      AA261364E7500CD1 classic_bike  2023-05-29 17:08:05 2023-05-29 17:51:59\n",
       "18      6DB13FAE5B7A3673 docked_bike   2023-05-28 20:16:34 2023-05-28 22:58:20\n",
       "19      B02E54E6F7E987CE electric_bike 2023-05-18 13:10:29 2023-05-18 13:17:32\n",
       "20      09732545D9374E17 classic_bike  2023-05-29 22:12:34 2023-05-29 22:29:37\n",
       "21      2A979757D6205BF8 electric_bike 2023-05-06 20:46:13 2023-05-06 20:57:38\n",
       "22      2471A931E49C9577 classic_bike  2023-05-26 18:41:13 2023-05-26 19:01:24\n",
       "23      7A3C84F9FDC88B8A classic_bike  2023-05-23 13:44:35 2023-05-23 13:59:36\n",
       "24      08E60474BB77A09F classic_bike  2023-05-30 20:35:26 2023-05-30 20:39:35\n",
       "25      7EE50FF1E3B1160A electric_bike 2023-05-28 21:53:01 2023-05-28 22:05:33\n",
       "26      C7455E1721AA4064 docked_bike   2023-05-27 11:14:09 2023-05-27 11:41:23\n",
       "27      3EE3C51D01AF833E classic_bike  2023-05-18 08:39:49 2023-05-18 08:48:48\n",
       "28      8706010AD2367F04 classic_bike  2023-05-09 10:26:45 2023-05-09 10:34:08\n",
       "29      68DA3F41B67D2B2D electric_bike 2023-05-13 16:11:36 2023-05-13 17:00:02\n",
       "30      D97B7202D327A6F9 electric_bike 2023-05-18 21:31:29 2023-05-18 21:43:15\n",
       "⋮       ⋮                ⋮             ⋮                   ⋮                  \n",
       "5738583 B551550A604296FE electric_bike 2024-04-22 16:35:13 2024-04-22 16:48:26\n",
       "5738584 A480C5E65CDCF2DD electric_bike 2024-04-15 16:29:49 2024-04-15 17:02:51\n",
       "5738585 89C2860E60382E7A electric_bike 2024-04-09 07:57:29 2024-04-09 08:26:28\n",
       "5738586 83A2875F5548B22F electric_bike 2024-04-06 19:30:49 2024-04-06 19:32:17\n",
       "5738587 34DB0C2D927BC247 electric_bike 2024-04-22 18:33:37 2024-04-22 19:05:28\n",
       "5738588 14E9E84DB6E7A386 electric_bike 2024-04-13 09:55:05 2024-04-13 10:01:51\n",
       "5738589 4CE42998228F42BD electric_bike 2024-04-16 16:54:25 2024-04-16 17:06:39\n",
       "5738590 B85A53D7FB63D58F electric_bike 2024-04-08 16:19:23 2024-04-08 16:29:02\n",
       "5738591 F1D8223B278CC353 electric_bike 2024-04-24 18:06:16 2024-04-24 18:10:23\n",
       "5738592 4FC3C6A2E96029BF electric_bike 2024-04-24 07:37:42 2024-04-24 07:48:27\n",
       "5738593 908FB46F1500AB06 electric_bike 2024-04-09 10:00:55 2024-04-09 10:05:17\n",
       "5738594 5C01F81F2F64760F electric_bike 2024-04-18 22:48:38 2024-04-18 22:53:38\n",
       "5738595 00844D73F05E2683 electric_bike 2024-04-24 17:03:18 2024-04-24 17:08:04\n",
       "5738596 DC7B3F4354212627 electric_bike 2024-04-03 18:09:41 2024-04-03 18:15:10\n",
       "5738597 BE0651110A99612F electric_bike 2024-04-03 16:45:07 2024-04-03 16:49:59\n",
       "5738598 BE0071DAECD43073 electric_bike 2024-04-12 15:02:53 2024-04-12 15:05:50\n",
       "5738599 291B570C91B7259B electric_bike 2024-04-03 18:01:29 2024-04-03 18:06:09\n",
       "5738600 86BFB9971EB78EDD electric_bike 2024-04-08 05:40:20 2024-04-08 05:44:41\n",
       "5738601 0C8EDF776A6A2180 electric_bike 2024-04-08 17:38:51 2024-04-08 17:49:15\n",
       "5738602 A760201A6D54480C electric_bike 2024-04-08 11:23:04 2024-04-08 11:34:48\n",
       "5738603 13D14F27E1E19AAA electric_bike 2024-04-19 18:30:17 2024-04-19 18:30:38\n",
       "5738604 A6DB0B5563A4551D electric_bike 2024-04-06 04:55:39 2024-04-06 05:01:06\n",
       "5738605 1C6412CE12F75BB2 electric_bike 2024-04-27 12:32:06 2024-04-27 12:54:13\n",
       "5738606 6D5A8C5C93815E56 electric_bike 2024-04-27 04:55:25 2024-04-27 05:00:20\n",
       "5738607 5CE1D1529C834AD3 electric_bike 2024-04-06 09:27:18 2024-04-06 09:38:11\n",
       "5738608 5E41443305C3B8A0 classic_bike  2024-04-06 13:40:56 2024-04-07 14:40:49\n",
       "5738609 50A275230D6C0492 classic_bike  2024-04-01 19:03:43 2024-04-01 19:13:16\n",
       "5738610 A88F756403FBF27F electric_bike 2024-04-11 16:09:50 2024-04-11 16:26:07\n",
       "5738611 DFD402AC5915F136 electric_bike 2024-04-19 07:20:28 2024-04-19 07:30:05\n",
       "5738612 61F035E8DCBB5313 electric_bike 2024-04-16 15:53:32 2024-04-16 16:15:20\n",
       "        start_station_name                start_station_id\n",
       "1       Southport Ave & Belmont Ave       13229           \n",
       "2       Southport Ave & Belmont Ave       13229           \n",
       "3       Halsted St & 21st St              13162           \n",
       "4       Carpenter St & Huron St           13196           \n",
       "5       Southport Ave & Clark St          TA1308000047    \n",
       "6       Clinton St & Madison St           TA1305000032    \n",
       "7       DuSable Lake Shore Dr & Monroe St 13300           \n",
       "8       Shore Dr & 55th St                TA1308000009    \n",
       "9       Clark St & Schiller St            TA1309000024    \n",
       "10      Clinton St & Madison St           TA1305000032    \n",
       "11      Clinton St & Madison St           TA1305000032    \n",
       "12      Clark St & Schiller St            TA1309000024    \n",
       "13      Clark St & Schiller St            TA1309000024    \n",
       "14      Clark St & Schiller St            TA1309000024    \n",
       "15      Clinton St & Madison St           TA1305000032    \n",
       "16      DuSable Lake Shore Dr & Monroe St 13300           \n",
       "17      Ashland Ave & Blackhawk St        13224           \n",
       "18      DuSable Lake Shore Dr & Monroe St 13300           \n",
       "19      Benson Ave & Church St            596             \n",
       "20      Clifton Ave & Armitage Ave        TA1307000163    \n",
       "21      Sedgwick St & North Ave           TA1307000038    \n",
       "22      Broadway & Belmont Ave            13277           \n",
       "23      Spaulding Ave & Armitage Ave      15650           \n",
       "24      LaSalle St & Illinois St          13430           \n",
       "25      Troy St & North Ave               15653           \n",
       "26      DuSable Lake Shore Dr & Monroe St 13300           \n",
       "27      Clinton St & Madison St           TA1305000032    \n",
       "28      Clinton St & Madison St           TA1305000032    \n",
       "29      DuSable Lake Shore Dr & Monroe St 13300           \n",
       "30      Clark St & Schiller St            TA1309000024    \n",
       "⋮       ⋮                                 ⋮               \n",
       "5738583 Clark St & Lincoln Ave            13179           \n",
       "5738584 California Ave & Cortez St        17660           \n",
       "5738585 Clinton St & Washington Blvd      WL-012          \n",
       "5738586 Ashland Ave & Wellington Ave      13269           \n",
       "5738587 Fairbanks Ct & Grand Ave          TA1305000003    \n",
       "5738588 Clark St & Lincoln Ave            13179           \n",
       "5738589 Clinton St & Washington Blvd      WL-012          \n",
       "5738590 Clinton St & Washington Blvd      WL-012          \n",
       "5738591 Clinton St & Washington Blvd      WL-012          \n",
       "5738592 Michigan Ave & 14th St            TA1307000124    \n",
       "5738593 Clinton St & Washington Blvd      WL-012          \n",
       "5738594 Leavitt St & Addison St           KA1504000143    \n",
       "5738595 Fairbanks Ct & Grand Ave          TA1305000003    \n",
       "5738596 Clinton St & Washington Blvd      WL-012          \n",
       "5738597 Michigan Ave & 14th St            TA1307000124    \n",
       "5738598 Ashland Ave & Wellington Ave      13269           \n",
       "5738599 Clinton St & Washington Blvd      WL-012          \n",
       "5738600 Clinton St & Washington Blvd      WL-012          \n",
       "5738601 Clinton St & Washington Blvd      WL-012          \n",
       "5738602 Clark St & Lincoln Ave            13179           \n",
       "5738603 Clinton St & Washington Blvd      WL-012          \n",
       "5738604 Ashland Ave & Wellington Ave      13269           \n",
       "5738605 Clark St & Lincoln Ave            13179           \n",
       "5738606 Ashland Ave & Wellington Ave      13269           \n",
       "5738607 Clark St & Lincoln Ave            13179           \n",
       "5738608 Clark St & Lincoln Ave            13179           \n",
       "5738609 California Ave & Cortez St        17660           \n",
       "5738610 Clinton St & Washington Blvd      WL-012          \n",
       "5738611 Clinton St & Washington Blvd      WL-012          \n",
       "5738612 Clinton St & Washington Blvd      WL-012          \n",
       "        end_station_name                end_station_id start_lat start_lng\n",
       "1                                                      41.93941  -87.66383\n",
       "2                                                      41.93948  -87.66385\n",
       "3                                                      41.85379  -87.64672\n",
       "4       Damen Ave & Cortland St         13133          41.89456  -87.65345\n",
       "5       Southport Ave & Belmont Ave     13229          41.95708  -87.66420\n",
       "6       McClurg Ct & Ohio St            TA1306000029   41.88275  -87.64119\n",
       "7       Adler Planetarium               13431          41.88096  -87.61674\n",
       "8       Harper Ave & 59th St            KA1503000070   41.79521  -87.58071\n",
       "9       Franklin St & Lake St           TA1307000111   41.90799  -87.63150\n",
       "10      Kingsbury St & Kinzie St        KA1503000043   41.88265  -87.64144\n",
       "11      Kingsbury St & Kinzie St        KA1503000043   41.88275  -87.64119\n",
       "12      Michigan Ave & 8th St           623            41.90799  -87.63150\n",
       "13      Michigan Ave & 8th St           623            41.90799  -87.63150\n",
       "14      Larrabee St & Division St       KA1504000079   41.90799  -87.63150\n",
       "15      State St & Randolph St          TA1305000029   41.88265  -87.64095\n",
       "16      Michigan Ave & Jackson Blvd     TA1309000002   41.88105  -87.61675\n",
       "17      Stave St & Armitage Ave         13266          41.90707  -87.66725\n",
       "18      Michigan Ave & Jackson Blvd     TA1309000002   41.88096  -87.61674\n",
       "19      Evanston Civic Center           661            42.04823  -87.68349\n",
       "20      Clark St & Wellington Ave       TA1307000136   41.91822  -87.65694\n",
       "21      Halsted St & Roscoe St          TA1309000025   41.91132  -87.63872\n",
       "22      Halsted St & Roscoe St          TA1309000025   41.94011  -87.64545\n",
       "23      Walsh Park                      18067          41.91711  -87.71022\n",
       "24      Wabash Ave & Grand Ave          TA1307000117   41.89076  -87.63170\n",
       "25      Milwaukee Ave & Fullerton Ave   428            41.90979  -87.70530\n",
       "26      Michigan Ave & Washington St    13001          41.88096  -87.61674\n",
       "27      Franklin St & Chicago Ave       13017          41.88275  -87.64119\n",
       "28      Michigan Ave & Washington St    13001          41.88275  -87.64119\n",
       "29      Lakefront Trail & Bryn Mawr Ave 15576          41.88109  -87.61681\n",
       "30      Clark St & Wrightwood Ave       TA1305000014   41.90811  -87.63157\n",
       "⋮       ⋮                               ⋮              ⋮         ⋮        \n",
       "5738583                                                41.91571  -87.63458\n",
       "5738584                                                41.90035  -87.69687\n",
       "5738585                                                41.88309  -87.64133\n",
       "5738586                                                41.93610  -87.66995\n",
       "5738587                                                41.89180  -87.62079\n",
       "5738588                                                41.91574  -87.63461\n",
       "5738589                                                41.88327  -87.64114\n",
       "5738590                                                41.88333  -87.64120\n",
       "5738591                                                41.88345  -87.64155\n",
       "5738592                                                41.86414  -87.62360\n",
       "5738593                                                41.88343  -87.64155\n",
       "5738594                                                41.94662  -87.68336\n",
       "5738595                                                41.89190  -87.62037\n",
       "5738596                                                41.88320  -87.64136\n",
       "5738597                                                41.86425  -87.62380\n",
       "5738598                                                41.93610  -87.66994\n",
       "5738599                                                41.88324  -87.64116\n",
       "5738600                                                41.88348  -87.64133\n",
       "5738601                                                41.88361  -87.64115\n",
       "5738602                                                41.91579  -87.63463\n",
       "5738603                                                41.88355  -87.64185\n",
       "5738604                                                41.93608  -87.66986\n",
       "5738605                                                41.91571  -87.63455\n",
       "5738606                                                41.93608  -87.66986\n",
       "5738607                                                41.91579  -87.63458\n",
       "5738608                                                41.91569  -87.63460\n",
       "5738609 California Ave & Milwaukee Ave  13084          41.90036  -87.69670\n",
       "5738610                                                41.88350  -87.64158\n",
       "5738611                                                41.88317  -87.64113\n",
       "5738612                                                41.88339  -87.64122\n",
       "        end_lat  end_lng   member_casual\n",
       "1       41.93000 -87.65000 member       \n",
       "2       41.94000 -87.69000 member       \n",
       "3       41.86000 -87.65000 member       \n",
       "4       41.91598 -87.67733 member       \n",
       "5       41.93948 -87.66375 member       \n",
       "6       41.89259 -87.61729 member       \n",
       "7       41.86610 -87.60727 casual       \n",
       "8       41.78794 -87.58832 member       \n",
       "9       41.88584 -87.63550 member       \n",
       "10      41.88918 -87.63851 member       \n",
       "11      41.88918 -87.63851 member       \n",
       "12      41.87277 -87.62398 member       \n",
       "13      41.87277 -87.62398 member       \n",
       "14      41.90349 -87.64335 member       \n",
       "15      41.88462 -87.62783 casual       \n",
       "16      41.87785 -87.62408 casual       \n",
       "17      41.91774 -87.69139 member       \n",
       "18      41.87785 -87.62408 casual       \n",
       "19      42.05704 -87.68655 member       \n",
       "20      41.93650 -87.64754 member       \n",
       "21      41.94367 -87.64895 member       \n",
       "22      41.94367 -87.64895 member       \n",
       "23      41.91461 -87.66797 member       \n",
       "24      41.89147 -87.62676 member       \n",
       "25      41.92467 -87.70055 member       \n",
       "26      41.88398 -87.62468 casual       \n",
       "27      41.89675 -87.63567 member       \n",
       "28      41.88398 -87.62468 member       \n",
       "29      41.98404 -87.65228 casual       \n",
       "30      41.92955 -87.64312 member       \n",
       "⋮       ⋮        ⋮         ⋮            \n",
       "5738583 41.94000 -87.64000 member       \n",
       "5738584 41.91000 -87.69000 member       \n",
       "5738585 41.89000 -87.63000 member       \n",
       "5738586 41.94000 -87.67000 member       \n",
       "5738587 41.92000 -87.64000 member       \n",
       "5738588 41.91000 -87.64000 member       \n",
       "5738589 41.91000 -87.63000 member       \n",
       "5738590 41.90000 -87.66000 member       \n",
       "5738591 41.89000 -87.64000 member       \n",
       "5738592 41.88000 -87.64000 member       \n",
       "5738593 41.88000 -87.63000 member       \n",
       "5738594 41.94000 -87.67000 member       \n",
       "5738595 41.90000 -87.63000 member       \n",
       "5738596 41.89000 -87.64000 member       \n",
       "5738597 41.85000 -87.63000 member       \n",
       "5738598 41.94000 -87.67000 member       \n",
       "5738599 41.88000 -87.64000 member       \n",
       "5738600 41.89000 -87.65000 member       \n",
       "5738601 41.90000 -87.67000 member       \n",
       "5738602 41.94000 -87.66000 member       \n",
       "5738603 41.88000 -87.64000 member       \n",
       "5738604 41.95000 -87.68000 member       \n",
       "5738605 41.93000 -87.70000 member       \n",
       "5738606 41.95000 -87.68000 member       \n",
       "5738607 41.94000 -87.64000 member       \n",
       "5738608       NA        NA casual       \n",
       "5738609 41.92269 -87.69715 member       \n",
       "5738610 41.91000 -87.68000 member       \n",
       "5738611 41.89000 -87.62000 member       \n",
       "5738612 41.92000 -87.66000 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#making sure that the datasets have combined correctly (checking that there is data for all 12 months)\n",
    "View(allRawData) \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "34b2696b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:02:04.345349Z",
     "iopub.status.busy": "2024-07-29T23:02:04.343560Z",
     "iopub.status.idle": "2024-07-29T23:02:13.031502Z",
     "shell.execute_reply": "2024-07-29T23:02:13.029406Z"
    },
    "papermill": {
     "duration": 8.708692,
     "end_time": "2024-07-29T23:02:13.034414",
     "exception": false,
     "start_time": "2024-07-29T23:02:04.325722",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"0 rows removed\"\n"
     ]
    }
   ],
   "source": [
    "#Removing unnessessary columns and any duplicates\n",
    "allRawData <- select(allRawData, -c(start_station_id, end_station_id, start_lat, start_lng, end_lat, end_lng))\n",
    "allData <- allRawData[!duplicated(allRawData$ride_id),]\n",
    "print(paste(nrow(allRawData) - nrow(allData), \"rows removed\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "6711170b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:02:13.062706Z",
     "iopub.status.busy": "2024-07-29T23:02:13.060981Z",
     "iopub.status.idle": "2024-07-29T23:02:13.093891Z",
     "shell.execute_reply": "2024-07-29T23:02:13.091556Z"
    },
    "papermill": {
     "duration": 0.050278,
     "end_time": "2024-07-29T23:02:13.096786",
     "exception": false,
     "start_time": "2024-07-29T23:02:13.046508",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type       started_at          ended_at        \n",
       " Length:5738612     Length:5738612     Length:5738612     Length:5738612    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       " start_station_name end_station_name   member_casual     \n",
       " Length:5738612     Length:5738612     Length:5738612    \n",
       " Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5738612 obs. of  7 variables:\n",
      " $ ride_id           : chr  \"0D9FA920C3062031\" \"92485E5FB5888ACD\" \"FB144B3FC8300187\" \"DDEB93BC2CE9AA77\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2023-05-07 19:53:48\" \"2023-05-06 18:54:08\" \"2023-05-21 00:40:21\" \"2023-05-10 16:47:01\" ...\n",
      " $ ended_at          : chr  \"2023-05-07 19:58:32\" \"2023-05-06 19:03:35\" \"2023-05-21 00:44:36\" \"2023-05-10 16:59:52\" ...\n",
      " $ start_station_name: chr  \"Southport Ave & Belmont Ave\" \"Southport Ave & Belmont Ave\" \"Halsted St & 21st St\" \"Carpenter St & Huron St\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"Damen Ave & Cortland St\" ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "#reviewing new dataset\n",
    "summary(allData)\n",
    "\n",
    "str(allData)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f32c8c1f",
   "metadata": {
    "papermill": {
     "duration": 0.013683,
     "end_time": "2024-07-29T23:02:13.121968",
     "exception": false,
     "start_time": "2024-07-29T23:02:13.108285",
     "status": "completed"
    },
    "tags": []
   },
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "a5d9c89d",
   "metadata": {
    "papermill": {
     "duration": 0.013355,
     "end_time": "2024-07-29T23:02:13.150015",
     "exception": false,
     "start_time": "2024-07-29T23:02:13.136660",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "From this overview, we can tell that there have been a total of 5,738,612 rides in the last 12 months, and that all data is stored as character variables. However, there are some rows in the dataset that have no values which wwe also have to take into consideration. There might be a reason for these blank cells, but for this case study we will assume that this was not intentional and that they need to be removed. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "bf5dfbd4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:02:13.178187Z",
     "iopub.status.busy": "2024-07-29T23:02:13.176490Z",
     "iopub.status.idle": "2024-07-29T23:03:17.467281Z",
     "shell.execute_reply": "2024-07-29T23:03:17.465305Z"
    },
    "papermill": {
     "duration": 64.307881,
     "end_time": "2024-07-29T23:03:17.470407",
     "exception": false,
     "start_time": "2024-07-29T23:02:13.162526",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#parsing datetime\n",
    "allData$started_at <- as.POSIXct(allData$started_at, \"%Y-%m-%d %H:%M:%S\")\n",
    "allData$ended_at <- as.POSIXct(allData$ended_at, \"%Y-%m-%d %H:%M:%S\")\n",
    "\n",
    "\n",
    "#create new columns to access data variables to manipulate\n",
    "#all variables including dates are stored as chars right now\n",
    "#the the dataset format is yyy-mm-dd hh-mm-ss right now\n",
    "allData$date <- as.Date(allData$started_at)\n",
    "#can strip the month, day, and year using the format function\n",
    "allData$month <- format(allData$date, \"%m\")\n",
    "allData$day <- format(allData$date, \"%d\")\n",
    "allData$year <- format(allData$date, \"%Y\")\n",
    "allData$day_of_week <- format(allData$date, \"%A\")\n",
    "allData$hour <- hour(allData$started_at) #able to do this through the lubridate function\n",
    "\n",
    "#parsing datetime\n",
    "#allData$started_at <- as.POSIXct(allData$started_at, \"%Y-%m-%d %H:%M:%S\")\n",
    "#allData$ended_at <- as.POSIXct(allData$ended_at, \"%Y-%m-%d %H:%M:%S\")\n",
    "\n",
    "allDataClean <- allData[(!allData$start_station_name == \"\" & !allData$end_station_name == \"\"),]#took out all the rows that don't have a start and end location \n",
    "#calculate ride lengths and see if there are any zeros or lower\n",
    "allDataClean$trip_length <- as.numeric((allDataClean$ended_at - allDataClean$started_at) / 60)\n",
    "allDataClean <- subset(allDataClean, allDataClean$trip_length > 0) #removed the rows where trip_length was less than or equal to 0.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "d759f598",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:17.500363Z",
     "iopub.status.busy": "2024-07-29T23:03:17.498594Z",
     "iopub.status.idle": "2024-07-29T23:03:19.925440Z",
     "shell.execute_reply": "2024-07-29T23:03:19.922260Z"
    },
    "papermill": {
     "duration": 2.446005,
     "end_time": "2024-07-29T23:03:19.929744",
     "exception": false,
     "start_time": "2024-07-29T23:03:17.483739",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"1403309 rows were removed.\"\n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                    \n",
       " Length:4335303     Length:4335303     Min.   :2023-05-01 00:00:33.00  \n",
       " Class :character   Class :character   1st Qu.:2023-07-06 17:13:21.50  \n",
       " Mode  :character   Mode  :character   Median :2023-09-01 16:26:37.00  \n",
       "                                       Mean   :2023-09-23 13:00:12.34  \n",
       "                                       3rd Qu.:2023-11-16 22:25:31.50  \n",
       "                                       Max.   :2024-04-30 23:58:22.00  \n",
       "    ended_at                      start_station_name end_station_name  \n",
       " Min.   :2023-05-01 00:04:28.00   Length:4335303     Length:4335303    \n",
       " 1st Qu.:2023-07-06 17:28:20.50   Class :character   Class :character  \n",
       " Median :2023-09-01 16:43:38.00   Mode  :character   Mode  :character  \n",
       " Mean   :2023-09-23 13:16:26.03                                        \n",
       " 3rd Qu.:2023-11-16 22:38:52.00                                        \n",
       " Max.   :2024-05-01 16:54:05.00                                        \n",
       " member_casual           date               month               day           \n",
       " Length:4335303     Min.   :2023-05-01   Length:4335303     Length:4335303    \n",
       " Class :character   1st Qu.:2023-07-06   Class :character   Class :character  \n",
       " Mode  :character   Median :2023-09-01   Mode  :character   Mode  :character  \n",
       "                    Mean   :2023-09-22                                        \n",
       "                    3rd Qu.:2023-11-16                                        \n",
       "                    Max.   :2024-04-30                                        \n",
       "     year           day_of_week             hour        trip_length       \n",
       " Length:4335303     Length:4335303     Min.   : 0.00   Min.   :    0.017  \n",
       " Class :character   Class :character   1st Qu.:11.00   1st Qu.:    5.717  \n",
       " Mode  :character   Mode  :character   Median :15.00   Median :    9.950  \n",
       "                                       Mean   :14.04   Mean   :   16.228  \n",
       "                                       3rd Qu.:18.00   3rd Qu.:   17.750  \n",
       "                                       Max.   :23.00   Max.   :12136.300  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4335303 × 14</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>date</th><th scope=col>month</th><th scope=col>day</th><th scope=col>year</th><th scope=col>day_of_week</th><th scope=col>hour</th><th scope=col>trip_length</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>4</th><td>DDEB93BC2CE9AA77</td><td>classic_bike </td><td>2023-05-10 16:47:01</td><td>2023-05-10 16:59:52</td><td><span style=white-space:pre-wrap>Carpenter St &amp; Huron St          </span></td><td><span style=white-space:pre-wrap>Damen Ave &amp; Cortland St        </span></td><td>member</td><td>2023-05-10</td><td>05</td><td>10</td><td>2023</td><td>Wednesday</td><td>16</td><td> 12.850000</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>C07B70172FC92F59</td><td>classic_bike </td><td>2023-05-09 18:30:34</td><td>2023-05-09 18:39:28</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Clark St         </span></td><td><span style=white-space:pre-wrap>Southport Ave &amp; Belmont Ave    </span></td><td>member</td><td>2023-05-09</td><td>05</td><td>09</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>18</td><td><span style=white-space:pre-wrap>  8.900000</span></td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2BA66385DF8F815A</td><td>classic_bike </td><td>2023-05-30 15:01:21</td><td>2023-05-30 15:17:00</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Ohio St           </span></td><td>member</td><td>2023-05-30</td><td>05</td><td>30</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>15</td><td> 15.650000</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>31EFCCB05F12D8EF</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-09 14:13:40</td><td>2023-05-09 14:47:20</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>Adler Planetarium              </span></td><td>casual</td><td>2023-05-09</td><td>05</td><td>09</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>14</td><td> 33.666667</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>71DFF834E1D3CE0B</td><td>classic_bike </td><td>2023-05-06 16:47:22</td><td>2023-05-06 16:52:13</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St               </span></td><td><span style=white-space:pre-wrap>Harper Ave &amp; 59th St           </span></td><td>member</td><td>2023-05-06</td><td>05</td><td>06</td><td>2023</td><td>Saturday </td><td>16</td><td><span style=white-space:pre-wrap>  4.850000</span></td></tr>\n",
       "\t<tr><th scope=row>9</th><td>2117485899B4CEA4</td><td>classic_bike </td><td>2023-05-15 12:47:26</td><td>2023-05-15 13:00:05</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td><span style=white-space:pre-wrap>Franklin St &amp; Lake St          </span></td><td>member</td><td>2023-05-15</td><td>05</td><td>15</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>12</td><td> 12.650000</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>811149F69AAE82DD</td><td>electric_bike</td><td>2023-05-19 05:44:26</td><td>2023-05-19 05:47:24</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St       </span></td><td>member</td><td>2023-05-19</td><td>05</td><td>19</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 5</td><td><span style=white-space:pre-wrap>  2.966667</span></td></tr>\n",
       "\t<tr><th scope=row>11</th><td>D71F8A3BB45BDA05</td><td>classic_bike </td><td>2023-05-13 17:37:12</td><td>2023-05-13 17:43:27</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St       </span></td><td>member</td><td>2023-05-13</td><td>05</td><td>13</td><td>2023</td><td>Saturday </td><td>17</td><td><span style=white-space:pre-wrap>  6.250000</span></td></tr>\n",
       "\t<tr><th scope=row>12</th><td>B0E352E3CE2B6EE9</td><td>classic_bike </td><td>2023-05-05 06:28:09</td><td>2023-05-05 06:55:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St          </span></td><td>member</td><td>2023-05-05</td><td>05</td><td>05</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 6</td><td> 27.700000</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>1348715B463F6610</td><td>classic_bike </td><td>2023-05-15 06:37:34</td><td>2023-05-15 07:01:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St          </span></td><td>member</td><td>2023-05-15</td><td>05</td><td>15</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 6</td><td> 24.283333</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>22FD33836A76B947</td><td>classic_bike </td><td>2023-05-18 20:35:00</td><td>2023-05-18 20:47:51</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td><span style=white-space:pre-wrap>Larrabee St &amp; Division St      </span></td><td>member</td><td>2023-05-18</td><td>05</td><td>18</td><td>2023</td><td>Thursday </td><td>20</td><td> 12.850000</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>A59A47089DBA82F4</td><td>electric_bike</td><td>2023-05-13 18:11:25</td><td>2023-05-13 18:42:47</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>State St &amp; Randolph St         </span></td><td>casual</td><td>2023-05-13</td><td>05</td><td>13</td><td>2023</td><td>Saturday </td><td>18</td><td> 31.366667</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>0604AB197D201117</td><td>electric_bike</td><td>2023-05-29 06:19:30</td><td>2023-05-29 06:39:50</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd    </span></td><td>casual</td><td>2023-05-29</td><td>05</td><td>29</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 6</td><td> 20.333333</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>AA261364E7500CD1</td><td>classic_bike </td><td>2023-05-29 17:08:05</td><td>2023-05-29 17:51:59</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Blackhawk St       </span></td><td><span style=white-space:pre-wrap>Stave St &amp; Armitage Ave        </span></td><td>member</td><td>2023-05-29</td><td>05</td><td>29</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>17</td><td> 43.900000</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>6DB13FAE5B7A3673</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-28 20:16:34</td><td>2023-05-28 22:58:20</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd    </span></td><td>casual</td><td>2023-05-28</td><td>05</td><td>28</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>20</td><td>161.766667</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>B02E54E6F7E987CE</td><td>electric_bike</td><td>2023-05-18 13:10:29</td><td>2023-05-18 13:17:32</td><td><span style=white-space:pre-wrap>Benson Ave &amp; Church St           </span></td><td><span style=white-space:pre-wrap>Evanston Civic Center          </span></td><td>member</td><td>2023-05-18</td><td>05</td><td>18</td><td>2023</td><td>Thursday </td><td>13</td><td><span style=white-space:pre-wrap>  7.050000</span></td></tr>\n",
       "\t<tr><th scope=row>20</th><td>09732545D9374E17</td><td>classic_bike </td><td>2023-05-29 22:12:34</td><td>2023-05-29 22:29:37</td><td><span style=white-space:pre-wrap>Clifton Ave &amp; Armitage Ave       </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Wellington Ave      </span></td><td>member</td><td>2023-05-29</td><td>05</td><td>29</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>22</td><td> 17.050000</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>2A979757D6205BF8</td><td>electric_bike</td><td>2023-05-06 20:46:13</td><td>2023-05-06 20:57:38</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; North Ave          </span></td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St         </span></td><td>member</td><td>2023-05-06</td><td>05</td><td>06</td><td>2023</td><td>Saturday </td><td>20</td><td> 11.416667</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>2471A931E49C9577</td><td>classic_bike </td><td>2023-05-26 18:41:13</td><td>2023-05-26 19:01:24</td><td><span style=white-space:pre-wrap>Broadway &amp; Belmont Ave           </span></td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St         </span></td><td>member</td><td>2023-05-26</td><td>05</td><td>26</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td>18</td><td> 20.183333</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>7A3C84F9FDC88B8A</td><td>classic_bike </td><td>2023-05-23 13:44:35</td><td>2023-05-23 13:59:36</td><td><span style=white-space:pre-wrap>Spaulding Ave &amp; Armitage Ave     </span></td><td><span style=white-space:pre-wrap>Walsh Park                     </span></td><td>member</td><td>2023-05-23</td><td>05</td><td>23</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>13</td><td> 15.016667</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>08E60474BB77A09F</td><td>classic_bike </td><td>2023-05-30 20:35:26</td><td>2023-05-30 20:39:35</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Illinois St         </span></td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave         </span></td><td>member</td><td>2023-05-30</td><td>05</td><td>30</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>20</td><td><span style=white-space:pre-wrap>  4.150000</span></td></tr>\n",
       "\t<tr><th scope=row>25</th><td>7EE50FF1E3B1160A</td><td>electric_bike</td><td>2023-05-28 21:53:01</td><td>2023-05-28 22:05:33</td><td><span style=white-space:pre-wrap>Troy St &amp; North Ave              </span></td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Fullerton Ave  </span></td><td>member</td><td>2023-05-28</td><td>05</td><td>28</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>21</td><td> 12.533333</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>C7455E1721AA4064</td><td><span style=white-space:pre-wrap>docked_bike  </span></td><td>2023-05-27 11:14:09</td><td>2023-05-27 11:41:23</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St   </span></td><td>casual</td><td>2023-05-27</td><td>05</td><td>27</td><td>2023</td><td>Saturday </td><td>11</td><td> 27.233333</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>3EE3C51D01AF833E</td><td>classic_bike </td><td>2023-05-18 08:39:49</td><td>2023-05-18 08:48:48</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>Franklin St &amp; Chicago Ave      </span></td><td>member</td><td>2023-05-18</td><td>05</td><td>18</td><td>2023</td><td>Thursday </td><td> 8</td><td><span style=white-space:pre-wrap>  8.983333</span></td></tr>\n",
       "\t<tr><th scope=row>28</th><td>8706010AD2367F04</td><td>classic_bike </td><td>2023-05-09 10:26:45</td><td>2023-05-09 10:34:08</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St   </span></td><td>member</td><td>2023-05-09</td><td>05</td><td>09</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>10</td><td><span style=white-space:pre-wrap>  7.383333</span></td></tr>\n",
       "\t<tr><th scope=row>29</th><td>68DA3F41B67D2B2D</td><td>electric_bike</td><td>2023-05-13 16:11:36</td><td>2023-05-13 17:00:02</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td>Lakefront Trail &amp; Bryn Mawr Ave</td><td>casual</td><td>2023-05-13</td><td>05</td><td>13</td><td>2023</td><td>Saturday </td><td>16</td><td> 48.433333</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>D97B7202D327A6F9</td><td>electric_bike</td><td>2023-05-18 21:31:29</td><td>2023-05-18 21:43:15</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St           </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Wrightwood Ave      </span></td><td>member</td><td>2023-05-18</td><td>05</td><td>18</td><td>2023</td><td>Thursday </td><td>21</td><td> 11.766667</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>E8D982A6E865D5E5</td><td>classic_bike </td><td>2023-05-10 08:28:14</td><td>2023-05-10 08:41:45</td><td><span style=white-space:pre-wrap>Carpenter St &amp; Huron St          </span></td><td><span style=white-space:pre-wrap>Canal St &amp; Jackson Blvd        </span></td><td>member</td><td>2023-05-10</td><td>05</td><td>10</td><td>2023</td><td>Wednesday</td><td> 8</td><td> 13.516667</td></tr>\n",
       "\t<tr><th scope=row>32</th><td>E7365FF30A17CBDA</td><td>classic_bike </td><td>2023-05-26 06:35:02</td><td>2023-05-26 06:58:12</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St               </span></td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; 63rd St    </span></td><td>member</td><td>2023-05-26</td><td>05</td><td>26</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 6</td><td> 23.166667</td></tr>\n",
       "\t<tr><th scope=row>33</th><td>C6E532697FDA66F0</td><td>electric_bike</td><td>2023-05-21 15:56:00</td><td>2023-05-21 16:00:36</td><td><span style=white-space:pre-wrap>Spaulding Ave &amp; Armitage Ave     </span></td><td><span style=white-space:pre-wrap>St. Louis Ave &amp; Fullerton Ave  </span></td><td>member</td><td>2023-05-21</td><td>05</td><td>21</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>15</td><td><span style=white-space:pre-wrap>  4.600000</span></td></tr>\n",
       "\t<tr><th scope=row>⋮</th><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><th scope=row>5737964</th><td>5071F3E9D6D0CA73</td><td>electric_bike</td><td>2024-04-14 11:49:16</td><td>2024-04-14 12:33:49</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St      </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-14</td><td>04</td><td>14</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>11</td><td>44.550000</td></tr>\n",
       "\t<tr><th scope=row>5737991</th><td>8DCFE65D5ADC30C9</td><td>electric_bike</td><td>2024-04-17 18:04:06</td><td>2024-04-17 18:15:03</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>member</td><td>2024-04-17</td><td>04</td><td>17</td><td>2024</td><td>Wednesday</td><td>18</td><td>10.950000</td></tr>\n",
       "\t<tr><th scope=row>5737995</th><td>0D4E4FDDD7B07CF5</td><td>classic_bike </td><td>2024-04-12 00:31:38</td><td>2024-04-12 00:40:51</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Roscoe St       </span></td><td>member</td><td>2024-04-12</td><td>04</td><td>12</td><td>2024</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 0</td><td> 9.216667</td></tr>\n",
       "\t<tr><th scope=row>5738008</th><td>C5802ECA93244E0D</td><td>electric_bike</td><td>2024-04-10 18:08:05</td><td>2024-04-10 18:39:18</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave    </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-10</td><td>04</td><td>10</td><td>2024</td><td>Wednesday</td><td>18</td><td>31.216667</td></tr>\n",
       "\t<tr><th scope=row>5738025</th><td>EE10C427ED4F128B</td><td>electric_bike</td><td>2024-04-11 18:12:33</td><td>2024-04-11 18:31:34</td><td><span style=white-space:pre-wrap>Clark St &amp; 9th St (AMLI)    </span></td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>member</td><td>2024-04-11</td><td>04</td><td>11</td><td>2024</td><td>Thursday </td><td>18</td><td>19.016667</td></tr>\n",
       "\t<tr><th scope=row>5738054</th><td>1DCE899055771296</td><td>electric_bike</td><td>2024-04-14 11:49:12</td><td>2024-04-14 12:33:45</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St      </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-14</td><td>04</td><td>14</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>11</td><td>44.550000</td></tr>\n",
       "\t<tr><th scope=row>5738096</th><td>6A8210EAE35174A6</td><td>classic_bike </td><td>2024-04-27 20:52:47</td><td>2024-04-27 20:59:51</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Roscoe St       </span></td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday </td><td>20</td><td> 7.066667</td></tr>\n",
       "\t<tr><th scope=row>5738097</th><td>383A6EDB9466BACB</td><td>classic_bike </td><td>2024-04-28 00:03:26</td><td>2024-04-28 00:12:14</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>casual</td><td>2024-04-28</td><td>04</td><td>28</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 0</td><td> 8.800000</td></tr>\n",
       "\t<tr><th scope=row>5738098</th><td>792A192FF8694960</td><td>classic_bike </td><td>2024-04-27 20:53:00</td><td>2024-04-27 20:59:38</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Roscoe St       </span></td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday </td><td>20</td><td> 6.633333</td></tr>\n",
       "\t<tr><th scope=row>5738107</th><td>22D54FFD770ED9D7</td><td>electric_bike</td><td>2024-04-25 06:43:44</td><td>2024-04-25 07:08:00</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>California Ave &amp; Division St  </span></td><td>member</td><td>2024-04-25</td><td>04</td><td>25</td><td>2024</td><td>Thursday </td><td> 6</td><td>24.266667</td></tr>\n",
       "\t<tr><th scope=row>5738114</th><td>A73A3C8381B43403</td><td>classic_bike </td><td>2024-04-12 08:36:46</td><td>2024-04-12 08:45:34</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-12</td><td>04</td><td>12</td><td>2024</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 8</td><td> 8.800000</td></tr>\n",
       "\t<tr><th scope=row>5738119</th><td>95344091DEF0C011</td><td>electric_bike</td><td>2024-04-11 17:53:10</td><td>2024-04-11 18:07:59</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-11</td><td>04</td><td>11</td><td>2024</td><td>Thursday </td><td>17</td><td>14.816667</td></tr>\n",
       "\t<tr><th scope=row>5738165</th><td>4A76B0B26BA13EBE</td><td>electric_bike</td><td>2024-04-27 14:16:10</td><td>2024-04-27 14:28:59</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday </td><td>14</td><td>12.816667</td></tr>\n",
       "\t<tr><th scope=row>5738200</th><td>C43AFD7D28FE14D0</td><td>electric_bike</td><td>2024-04-02 18:46:53</td><td>2024-04-02 18:55:45</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>member</td><td>2024-04-02</td><td>04</td><td>02</td><td>2024</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>18</td><td> 8.866667</td></tr>\n",
       "\t<tr><th scope=row>5738239</th><td>9EF7DBF34D06ADFC</td><td>classic_bike </td><td>2024-04-27 20:52:16</td><td>2024-04-27 20:59:48</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Roscoe St       </span></td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday </td><td>20</td><td> 7.533333</td></tr>\n",
       "\t<tr><th scope=row>5738241</th><td>A55BBDEA8801DF2B</td><td>classic_bike </td><td>2024-04-28 00:04:08</td><td>2024-04-28 00:12:12</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>casual</td><td>2024-04-28</td><td>04</td><td>28</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 0</td><td> 8.066667</td></tr>\n",
       "\t<tr><th scope=row>5738243</th><td>4436CB785CD773F7</td><td>electric_bike</td><td>2024-04-24 16:45:06</td><td>2024-04-24 16:53:14</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>casual</td><td>2024-04-24</td><td>04</td><td>24</td><td>2024</td><td>Wednesday</td><td>16</td><td> 8.133333</td></tr>\n",
       "\t<tr><th scope=row>5738283</th><td>7C99ACB892B8289B</td><td>classic_bike </td><td>2024-04-30 17:50:27</td><td>2024-04-30 18:29:27</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>Campbell Ave &amp; Montrose Ave   </span></td><td>member</td><td>2024-04-30</td><td>04</td><td>30</td><td>2024</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>17</td><td>39.000000</td></tr>\n",
       "\t<tr><th scope=row>5738288</th><td>4B3A22621BAEA218</td><td>classic_bike </td><td>2024-04-15 09:28:02</td><td>2024-04-15 09:39:34</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Lake St          </span></td><td>member</td><td>2024-04-15</td><td>04</td><td>15</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 9</td><td>11.533333</td></tr>\n",
       "\t<tr><th scope=row>5738319</th><td>FB7715517FCCFE18</td><td>classic_bike </td><td>2024-04-08 18:24:31</td><td>2024-04-08 18:39:16</td><td>Clinton St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave         </span></td><td>casual</td><td>2024-04-08</td><td>04</td><td>08</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>18</td><td>14.750000</td></tr>\n",
       "\t<tr><th scope=row>5738338</th><td>FB8B5AD4F79CAD92</td><td>classic_bike </td><td>2024-04-27 17:17:00</td><td>2024-04-27 17:38:54</td><td><span style=white-space:pre-wrap>Clark St &amp; Lincoln Ave      </span></td><td>California Ave &amp; Milwaukee Ave</td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday </td><td>17</td><td>21.900000</td></tr>\n",
       "\t<tr><th scope=row>5738397</th><td>3F33E1EE4AE49488</td><td>electric_bike</td><td>2024-04-05 21:00:16</td><td>2024-04-05 21:02:39</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td><span style=white-space:pre-wrap>California Ave &amp; Division St  </span></td><td>member</td><td>2024-04-05</td><td>04</td><td>05</td><td>2024</td><td><span style=white-space:pre-wrap>Friday   </span></td><td>21</td><td> 2.383333</td></tr>\n",
       "\t<tr><th scope=row>5738421</th><td>14C2493FDCC8DB09</td><td>classic_bike </td><td>2024-04-16 16:12:47</td><td>2024-04-16 16:37:43</td><td>Clinton St &amp; Washington Blvd</td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-16</td><td>04</td><td>16</td><td>2024</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>16</td><td>24.933333</td></tr>\n",
       "\t<tr><th scope=row>5738426</th><td>116A5F5E8DF68CAC</td><td>electric_bike</td><td>2024-04-25 18:09:00</td><td>2024-04-25 18:16:08</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-25</td><td>04</td><td>25</td><td>2024</td><td>Thursday </td><td>18</td><td> 7.133333</td></tr>\n",
       "\t<tr><th scope=row>5738449</th><td>D2962E716B35E393</td><td>electric_bike</td><td>2024-04-22 20:52:49</td><td>2024-04-22 20:59:55</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>casual</td><td>2024-04-22</td><td>04</td><td>22</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>20</td><td> 7.100000</td></tr>\n",
       "\t<tr><th scope=row>5738450</th><td>9CAD5CA1DA4AC50C</td><td>classic_bike </td><td>2024-04-22 21:05:10</td><td>2024-04-22 21:16:31</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>casual</td><td>2024-04-22</td><td>04</td><td>22</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>21</td><td>11.350000</td></tr>\n",
       "\t<tr><th scope=row>5738459</th><td>AD91174811F39262</td><td>electric_bike</td><td>2024-04-08 10:28:17</td><td>2024-04-08 10:43:25</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Addison St     </span></td><td><span style=white-space:pre-wrap>Campbell Ave &amp; Montrose Ave   </span></td><td>member</td><td>2024-04-08</td><td>04</td><td>08</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>10</td><td>15.133333</td></tr>\n",
       "\t<tr><th scope=row>5738575</th><td>9771E1C1AEEDCB9F</td><td>electric_bike</td><td>2024-04-26 20:34:14</td><td>2024-04-26 20:39:48</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-26</td><td>04</td><td>26</td><td>2024</td><td><span style=white-space:pre-wrap>Friday   </span></td><td>20</td><td> 5.566667</td></tr>\n",
       "\t<tr><th scope=row>5738578</th><td>0B583B099760D2BC</td><td>electric_bike</td><td>2024-04-09 07:31:56</td><td>2024-04-09 07:41:43</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-09</td><td>04</td><td>09</td><td>2024</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 7</td><td> 9.783333</td></tr>\n",
       "\t<tr><th scope=row>5738609</th><td>50A275230D6C0492</td><td>classic_bike </td><td>2024-04-01 19:03:43</td><td>2024-04-01 19:13:16</td><td><span style=white-space:pre-wrap>California Ave &amp; Cortez St  </span></td><td>California Ave &amp; Milwaukee Ave</td><td>member</td><td>2024-04-01</td><td>04</td><td>01</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>19</td><td> 9.550000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4335303 × 14\n",
       "\\begin{tabular}{r|llllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & end\\_station\\_name & member\\_casual & date & month & day & year & day\\_of\\_week & hour & trip\\_length\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t4 & DDEB93BC2CE9AA77 & classic\\_bike  & 2023-05-10 16:47:01 & 2023-05-10 16:59:52 & Carpenter St \\& Huron St           & Damen Ave \\& Cortland St         & member & 2023-05-10 & 05 & 10 & 2023 & Wednesday & 16 &  12.850000\\\\\n",
       "\t5 & C07B70172FC92F59 & classic\\_bike  & 2023-05-09 18:30:34 & 2023-05-09 18:39:28 & Southport Ave \\& Clark St          & Southport Ave \\& Belmont Ave     & member & 2023-05-09 & 05 & 09 & 2023 & Tuesday   & 18 &   8.900000\\\\\n",
       "\t6 & 2BA66385DF8F815A & classic\\_bike  & 2023-05-30 15:01:21 & 2023-05-30 15:17:00 & Clinton St \\& Madison St           & McClurg Ct \\& Ohio St            & member & 2023-05-30 & 05 & 30 & 2023 & Tuesday   & 15 &  15.650000\\\\\n",
       "\t7 & 31EFCCB05F12D8EF & docked\\_bike   & 2023-05-09 14:13:40 & 2023-05-09 14:47:20 & DuSable Lake Shore Dr \\& Monroe St & Adler Planetarium               & casual & 2023-05-09 & 05 & 09 & 2023 & Tuesday   & 14 &  33.666667\\\\\n",
       "\t8 & 71DFF834E1D3CE0B & classic\\_bike  & 2023-05-06 16:47:22 & 2023-05-06 16:52:13 & Shore Dr \\& 55th St                & Harper Ave \\& 59th St            & member & 2023-05-06 & 05 & 06 & 2023 & Saturday  & 16 &   4.850000\\\\\n",
       "\t9 & 2117485899B4CEA4 & classic\\_bike  & 2023-05-15 12:47:26 & 2023-05-15 13:00:05 & Clark St \\& Schiller St            & Franklin St \\& Lake St           & member & 2023-05-15 & 05 & 15 & 2023 & Monday    & 12 &  12.650000\\\\\n",
       "\t10 & 811149F69AAE82DD & electric\\_bike & 2023-05-19 05:44:26 & 2023-05-19 05:47:24 & Clinton St \\& Madison St           & Kingsbury St \\& Kinzie St        & member & 2023-05-19 & 05 & 19 & 2023 & Friday    &  5 &   2.966667\\\\\n",
       "\t11 & D71F8A3BB45BDA05 & classic\\_bike  & 2023-05-13 17:37:12 & 2023-05-13 17:43:27 & Clinton St \\& Madison St           & Kingsbury St \\& Kinzie St        & member & 2023-05-13 & 05 & 13 & 2023 & Saturday  & 17 &   6.250000\\\\\n",
       "\t12 & B0E352E3CE2B6EE9 & classic\\_bike  & 2023-05-05 06:28:09 & 2023-05-05 06:55:51 & Clark St \\& Schiller St            & Michigan Ave \\& 8th St           & member & 2023-05-05 & 05 & 05 & 2023 & Friday    &  6 &  27.700000\\\\\n",
       "\t13 & 1348715B463F6610 & classic\\_bike  & 2023-05-15 06:37:34 & 2023-05-15 07:01:51 & Clark St \\& Schiller St            & Michigan Ave \\& 8th St           & member & 2023-05-15 & 05 & 15 & 2023 & Monday    &  6 &  24.283333\\\\\n",
       "\t14 & 22FD33836A76B947 & classic\\_bike  & 2023-05-18 20:35:00 & 2023-05-18 20:47:51 & Clark St \\& Schiller St            & Larrabee St \\& Division St       & member & 2023-05-18 & 05 & 18 & 2023 & Thursday  & 20 &  12.850000\\\\\n",
       "\t15 & A59A47089DBA82F4 & electric\\_bike & 2023-05-13 18:11:25 & 2023-05-13 18:42:47 & Clinton St \\& Madison St           & State St \\& Randolph St          & casual & 2023-05-13 & 05 & 13 & 2023 & Saturday  & 18 &  31.366667\\\\\n",
       "\t16 & 0604AB197D201117 & electric\\_bike & 2023-05-29 06:19:30 & 2023-05-29 06:39:50 & DuSable Lake Shore Dr \\& Monroe St & Michigan Ave \\& Jackson Blvd     & casual & 2023-05-29 & 05 & 29 & 2023 & Monday    &  6 &  20.333333\\\\\n",
       "\t17 & AA261364E7500CD1 & classic\\_bike  & 2023-05-29 17:08:05 & 2023-05-29 17:51:59 & Ashland Ave \\& Blackhawk St        & Stave St \\& Armitage Ave         & member & 2023-05-29 & 05 & 29 & 2023 & Monday    & 17 &  43.900000\\\\\n",
       "\t18 & 6DB13FAE5B7A3673 & docked\\_bike   & 2023-05-28 20:16:34 & 2023-05-28 22:58:20 & DuSable Lake Shore Dr \\& Monroe St & Michigan Ave \\& Jackson Blvd     & casual & 2023-05-28 & 05 & 28 & 2023 & Sunday    & 20 & 161.766667\\\\\n",
       "\t19 & B02E54E6F7E987CE & electric\\_bike & 2023-05-18 13:10:29 & 2023-05-18 13:17:32 & Benson Ave \\& Church St            & Evanston Civic Center           & member & 2023-05-18 & 05 & 18 & 2023 & Thursday  & 13 &   7.050000\\\\\n",
       "\t20 & 09732545D9374E17 & classic\\_bike  & 2023-05-29 22:12:34 & 2023-05-29 22:29:37 & Clifton Ave \\& Armitage Ave        & Clark St \\& Wellington Ave       & member & 2023-05-29 & 05 & 29 & 2023 & Monday    & 22 &  17.050000\\\\\n",
       "\t21 & 2A979757D6205BF8 & electric\\_bike & 2023-05-06 20:46:13 & 2023-05-06 20:57:38 & Sedgwick St \\& North Ave           & Halsted St \\& Roscoe St          & member & 2023-05-06 & 05 & 06 & 2023 & Saturday  & 20 &  11.416667\\\\\n",
       "\t22 & 2471A931E49C9577 & classic\\_bike  & 2023-05-26 18:41:13 & 2023-05-26 19:01:24 & Broadway \\& Belmont Ave            & Halsted St \\& Roscoe St          & member & 2023-05-26 & 05 & 26 & 2023 & Friday    & 18 &  20.183333\\\\\n",
       "\t23 & 7A3C84F9FDC88B8A & classic\\_bike  & 2023-05-23 13:44:35 & 2023-05-23 13:59:36 & Spaulding Ave \\& Armitage Ave      & Walsh Park                      & member & 2023-05-23 & 05 & 23 & 2023 & Tuesday   & 13 &  15.016667\\\\\n",
       "\t24 & 08E60474BB77A09F & classic\\_bike  & 2023-05-30 20:35:26 & 2023-05-30 20:39:35 & LaSalle St \\& Illinois St          & Wabash Ave \\& Grand Ave          & member & 2023-05-30 & 05 & 30 & 2023 & Tuesday   & 20 &   4.150000\\\\\n",
       "\t25 & 7EE50FF1E3B1160A & electric\\_bike & 2023-05-28 21:53:01 & 2023-05-28 22:05:33 & Troy St \\& North Ave               & Milwaukee Ave \\& Fullerton Ave   & member & 2023-05-28 & 05 & 28 & 2023 & Sunday    & 21 &  12.533333\\\\\n",
       "\t26 & C7455E1721AA4064 & docked\\_bike   & 2023-05-27 11:14:09 & 2023-05-27 11:41:23 & DuSable Lake Shore Dr \\& Monroe St & Michigan Ave \\& Washington St    & casual & 2023-05-27 & 05 & 27 & 2023 & Saturday  & 11 &  27.233333\\\\\n",
       "\t27 & 3EE3C51D01AF833E & classic\\_bike  & 2023-05-18 08:39:49 & 2023-05-18 08:48:48 & Clinton St \\& Madison St           & Franklin St \\& Chicago Ave       & member & 2023-05-18 & 05 & 18 & 2023 & Thursday  &  8 &   8.983333\\\\\n",
       "\t28 & 8706010AD2367F04 & classic\\_bike  & 2023-05-09 10:26:45 & 2023-05-09 10:34:08 & Clinton St \\& Madison St           & Michigan Ave \\& Washington St    & member & 2023-05-09 & 05 & 09 & 2023 & Tuesday   & 10 &   7.383333\\\\\n",
       "\t29 & 68DA3F41B67D2B2D & electric\\_bike & 2023-05-13 16:11:36 & 2023-05-13 17:00:02 & DuSable Lake Shore Dr \\& Monroe St & Lakefront Trail \\& Bryn Mawr Ave & casual & 2023-05-13 & 05 & 13 & 2023 & Saturday  & 16 &  48.433333\\\\\n",
       "\t30 & D97B7202D327A6F9 & electric\\_bike & 2023-05-18 21:31:29 & 2023-05-18 21:43:15 & Clark St \\& Schiller St            & Clark St \\& Wrightwood Ave       & member & 2023-05-18 & 05 & 18 & 2023 & Thursday  & 21 &  11.766667\\\\\n",
       "\t31 & E8D982A6E865D5E5 & classic\\_bike  & 2023-05-10 08:28:14 & 2023-05-10 08:41:45 & Carpenter St \\& Huron St           & Canal St \\& Jackson Blvd         & member & 2023-05-10 & 05 & 10 & 2023 & Wednesday &  8 &  13.516667\\\\\n",
       "\t32 & E7365FF30A17CBDA & classic\\_bike  & 2023-05-26 06:35:02 & 2023-05-26 06:58:12 & Shore Dr \\& 55th St                & Cottage Grove Ave \\& 63rd St     & member & 2023-05-26 & 05 & 26 & 2023 & Friday    &  6 &  23.166667\\\\\n",
       "\t33 & C6E532697FDA66F0 & electric\\_bike & 2023-05-21 15:56:00 & 2023-05-21 16:00:36 & Spaulding Ave \\& Armitage Ave      & St. Louis Ave \\& Fullerton Ave   & member & 2023-05-21 & 05 & 21 & 2023 & Sunday    & 15 &   4.600000\\\\\n",
       "\t⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t5737964 & 5071F3E9D6D0CA73 & electric\\_bike & 2024-04-14 11:49:16 & 2024-04-14 12:33:49 & Michigan Ave \\& 14th St       & California Ave \\& Milwaukee Ave & member & 2024-04-14 & 04 & 14 & 2024 & Sunday    & 11 & 44.550000\\\\\n",
       "\t5737991 & 8DCFE65D5ADC30C9 & electric\\_bike & 2024-04-17 18:04:06 & 2024-04-17 18:15:03 & Clinton St \\& Washington Blvd & Wood St \\& Chicago Ave          & member & 2024-04-17 & 04 & 17 & 2024 & Wednesday & 18 & 10.950000\\\\\n",
       "\t5737995 & 0D4E4FDDD7B07CF5 & classic\\_bike  & 2024-04-12 00:31:38 & 2024-04-12 00:40:51 & Leavitt St \\& Addison St      & Western Ave \\& Roscoe St        & member & 2024-04-12 & 04 & 12 & 2024 & Friday    &  0 &  9.216667\\\\\n",
       "\t5738008 & C5802ECA93244E0D & electric\\_bike & 2024-04-10 18:08:05 & 2024-04-10 18:39:18 & Fairbanks Ct \\& Grand Ave     & California Ave \\& Milwaukee Ave & member & 2024-04-10 & 04 & 10 & 2024 & Wednesday & 18 & 31.216667\\\\\n",
       "\t5738025 & EE10C427ED4F128B & electric\\_bike & 2024-04-11 18:12:33 & 2024-04-11 18:31:34 & Clark St \\& 9th St (AMLI)     & Wood St \\& Chicago Ave          & member & 2024-04-11 & 04 & 11 & 2024 & Thursday  & 18 & 19.016667\\\\\n",
       "\t5738054 & 1DCE899055771296 & electric\\_bike & 2024-04-14 11:49:12 & 2024-04-14 12:33:45 & Michigan Ave \\& 14th St       & California Ave \\& Milwaukee Ave & member & 2024-04-14 & 04 & 14 & 2024 & Sunday    & 11 & 44.550000\\\\\n",
       "\t5738096 & 6A8210EAE35174A6 & classic\\_bike  & 2024-04-27 20:52:47 & 2024-04-27 20:59:51 & Leavitt St \\& Addison St      & Western Ave \\& Roscoe St        & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday  & 20 &  7.066667\\\\\n",
       "\t5738097 & 383A6EDB9466BACB & classic\\_bike  & 2024-04-28 00:03:26 & 2024-04-28 00:12:14 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & casual & 2024-04-28 & 04 & 28 & 2024 & Sunday    &  0 &  8.800000\\\\\n",
       "\t5738098 & 792A192FF8694960 & classic\\_bike  & 2024-04-27 20:53:00 & 2024-04-27 20:59:38 & Leavitt St \\& Addison St      & Western Ave \\& Roscoe St        & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday  & 20 &  6.633333\\\\\n",
       "\t5738107 & 22D54FFD770ED9D7 & electric\\_bike & 2024-04-25 06:43:44 & 2024-04-25 07:08:00 & California Ave \\& Cortez St   & California Ave \\& Division St   & member & 2024-04-25 & 04 & 25 & 2024 & Thursday  &  6 & 24.266667\\\\\n",
       "\t5738114 & A73A3C8381B43403 & classic\\_bike  & 2024-04-12 08:36:46 & 2024-04-12 08:45:34 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & member & 2024-04-12 & 04 & 12 & 2024 & Friday    &  8 &  8.800000\\\\\n",
       "\t5738119 & 95344091DEF0C011 & electric\\_bike & 2024-04-11 17:53:10 & 2024-04-11 18:07:59 & Leavitt St \\& Addison St      & California Ave \\& Milwaukee Ave & member & 2024-04-11 & 04 & 11 & 2024 & Thursday  & 17 & 14.816667\\\\\n",
       "\t5738165 & 4A76B0B26BA13EBE & electric\\_bike & 2024-04-27 14:16:10 & 2024-04-27 14:28:59 & Clinton St \\& Washington Blvd & Wood St \\& Chicago Ave          & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday  & 14 & 12.816667\\\\\n",
       "\t5738200 & C43AFD7D28FE14D0 & electric\\_bike & 2024-04-02 18:46:53 & 2024-04-02 18:55:45 & Clinton St \\& Washington Blvd & Wood St \\& Chicago Ave          & member & 2024-04-02 & 04 & 02 & 2024 & Tuesday   & 18 &  8.866667\\\\\n",
       "\t5738239 & 9EF7DBF34D06ADFC & classic\\_bike  & 2024-04-27 20:52:16 & 2024-04-27 20:59:48 & Leavitt St \\& Addison St      & Western Ave \\& Roscoe St        & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday  & 20 &  7.533333\\\\\n",
       "\t5738241 & A55BBDEA8801DF2B & classic\\_bike  & 2024-04-28 00:04:08 & 2024-04-28 00:12:12 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & casual & 2024-04-28 & 04 & 28 & 2024 & Sunday    &  0 &  8.066667\\\\\n",
       "\t5738243 & 4436CB785CD773F7 & electric\\_bike & 2024-04-24 16:45:06 & 2024-04-24 16:53:14 & California Ave \\& Cortez St   & Wood St \\& Chicago Ave          & casual & 2024-04-24 & 04 & 24 & 2024 & Wednesday & 16 &  8.133333\\\\\n",
       "\t5738283 & 7C99ACB892B8289B & classic\\_bike  & 2024-04-30 17:50:27 & 2024-04-30 18:29:27 & Clinton St \\& Washington Blvd & Campbell Ave \\& Montrose Ave    & member & 2024-04-30 & 04 & 30 & 2024 & Tuesday   & 17 & 39.000000\\\\\n",
       "\t5738288 & 4B3A22621BAEA218 & classic\\_bike  & 2024-04-15 09:28:02 & 2024-04-15 09:39:34 & California Ave \\& Cortez St   & Kedzie Ave \\& Lake St           & member & 2024-04-15 & 04 & 15 & 2024 & Monday    &  9 & 11.533333\\\\\n",
       "\t5738319 & FB7715517FCCFE18 & classic\\_bike  & 2024-04-08 18:24:31 & 2024-04-08 18:39:16 & Clinton St \\& Washington Blvd & Wood St \\& Chicago Ave          & casual & 2024-04-08 & 04 & 08 & 2024 & Monday    & 18 & 14.750000\\\\\n",
       "\t5738338 & FB8B5AD4F79CAD92 & classic\\_bike  & 2024-04-27 17:17:00 & 2024-04-27 17:38:54 & Clark St \\& Lincoln Ave       & California Ave \\& Milwaukee Ave & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday  & 17 & 21.900000\\\\\n",
       "\t5738397 & 3F33E1EE4AE49488 & electric\\_bike & 2024-04-05 21:00:16 & 2024-04-05 21:02:39 & California Ave \\& Cortez St   & California Ave \\& Division St   & member & 2024-04-05 & 04 & 05 & 2024 & Friday    & 21 &  2.383333\\\\\n",
       "\t5738421 & 14C2493FDCC8DB09 & classic\\_bike  & 2024-04-16 16:12:47 & 2024-04-16 16:37:43 & Clinton St \\& Washington Blvd & California Ave \\& Milwaukee Ave & member & 2024-04-16 & 04 & 16 & 2024 & Tuesday   & 16 & 24.933333\\\\\n",
       "\t5738426 & 116A5F5E8DF68CAC & electric\\_bike & 2024-04-25 18:09:00 & 2024-04-25 18:16:08 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & member & 2024-04-25 & 04 & 25 & 2024 & Thursday  & 18 &  7.133333\\\\\n",
       "\t5738449 & D2962E716B35E393 & electric\\_bike & 2024-04-22 20:52:49 & 2024-04-22 20:59:55 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & casual & 2024-04-22 & 04 & 22 & 2024 & Monday    & 20 &  7.100000\\\\\n",
       "\t5738450 & 9CAD5CA1DA4AC50C & classic\\_bike  & 2024-04-22 21:05:10 & 2024-04-22 21:16:31 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & casual & 2024-04-22 & 04 & 22 & 2024 & Monday    & 21 & 11.350000\\\\\n",
       "\t5738459 & AD91174811F39262 & electric\\_bike & 2024-04-08 10:28:17 & 2024-04-08 10:43:25 & Leavitt St \\& Addison St      & Campbell Ave \\& Montrose Ave    & member & 2024-04-08 & 04 & 08 & 2024 & Monday    & 10 & 15.133333\\\\\n",
       "\t5738575 & 9771E1C1AEEDCB9F & electric\\_bike & 2024-04-26 20:34:14 & 2024-04-26 20:39:48 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & member & 2024-04-26 & 04 & 26 & 2024 & Friday    & 20 &  5.566667\\\\\n",
       "\t5738578 & 0B583B099760D2BC & electric\\_bike & 2024-04-09 07:31:56 & 2024-04-09 07:41:43 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & member & 2024-04-09 & 04 & 09 & 2024 & Tuesday   &  7 &  9.783333\\\\\n",
       "\t5738609 & 50A275230D6C0492 & classic\\_bike  & 2024-04-01 19:03:43 & 2024-04-01 19:13:16 & California Ave \\& Cortez St   & California Ave \\& Milwaukee Ave & member & 2024-04-01 & 04 & 01 & 2024 & Monday    & 19 &  9.550000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4335303 × 14\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | date &lt;date&gt; | month &lt;chr&gt; | day &lt;chr&gt; | year &lt;chr&gt; | day_of_week &lt;chr&gt; | hour &lt;int&gt; | trip_length &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 4 | DDEB93BC2CE9AA77 | classic_bike  | 2023-05-10 16:47:01 | 2023-05-10 16:59:52 | Carpenter St &amp; Huron St           | Damen Ave &amp; Cortland St         | member | 2023-05-10 | 05 | 10 | 2023 | Wednesday | 16 |  12.850000 |\n",
       "| 5 | C07B70172FC92F59 | classic_bike  | 2023-05-09 18:30:34 | 2023-05-09 18:39:28 | Southport Ave &amp; Clark St          | Southport Ave &amp; Belmont Ave     | member | 2023-05-09 | 05 | 09 | 2023 | Tuesday   | 18 |   8.900000 |\n",
       "| 6 | 2BA66385DF8F815A | classic_bike  | 2023-05-30 15:01:21 | 2023-05-30 15:17:00 | Clinton St &amp; Madison St           | McClurg Ct &amp; Ohio St            | member | 2023-05-30 | 05 | 30 | 2023 | Tuesday   | 15 |  15.650000 |\n",
       "| 7 | 31EFCCB05F12D8EF | docked_bike   | 2023-05-09 14:13:40 | 2023-05-09 14:47:20 | DuSable Lake Shore Dr &amp; Monroe St | Adler Planetarium               | casual | 2023-05-09 | 05 | 09 | 2023 | Tuesday   | 14 |  33.666667 |\n",
       "| 8 | 71DFF834E1D3CE0B | classic_bike  | 2023-05-06 16:47:22 | 2023-05-06 16:52:13 | Shore Dr &amp; 55th St                | Harper Ave &amp; 59th St            | member | 2023-05-06 | 05 | 06 | 2023 | Saturday  | 16 |   4.850000 |\n",
       "| 9 | 2117485899B4CEA4 | classic_bike  | 2023-05-15 12:47:26 | 2023-05-15 13:00:05 | Clark St &amp; Schiller St            | Franklin St &amp; Lake St           | member | 2023-05-15 | 05 | 15 | 2023 | Monday    | 12 |  12.650000 |\n",
       "| 10 | 811149F69AAE82DD | electric_bike | 2023-05-19 05:44:26 | 2023-05-19 05:47:24 | Clinton St &amp; Madison St           | Kingsbury St &amp; Kinzie St        | member | 2023-05-19 | 05 | 19 | 2023 | Friday    |  5 |   2.966667 |\n",
       "| 11 | D71F8A3BB45BDA05 | classic_bike  | 2023-05-13 17:37:12 | 2023-05-13 17:43:27 | Clinton St &amp; Madison St           | Kingsbury St &amp; Kinzie St        | member | 2023-05-13 | 05 | 13 | 2023 | Saturday  | 17 |   6.250000 |\n",
       "| 12 | B0E352E3CE2B6EE9 | classic_bike  | 2023-05-05 06:28:09 | 2023-05-05 06:55:51 | Clark St &amp; Schiller St            | Michigan Ave &amp; 8th St           | member | 2023-05-05 | 05 | 05 | 2023 | Friday    |  6 |  27.700000 |\n",
       "| 13 | 1348715B463F6610 | classic_bike  | 2023-05-15 06:37:34 | 2023-05-15 07:01:51 | Clark St &amp; Schiller St            | Michigan Ave &amp; 8th St           | member | 2023-05-15 | 05 | 15 | 2023 | Monday    |  6 |  24.283333 |\n",
       "| 14 | 22FD33836A76B947 | classic_bike  | 2023-05-18 20:35:00 | 2023-05-18 20:47:51 | Clark St &amp; Schiller St            | Larrabee St &amp; Division St       | member | 2023-05-18 | 05 | 18 | 2023 | Thursday  | 20 |  12.850000 |\n",
       "| 15 | A59A47089DBA82F4 | electric_bike | 2023-05-13 18:11:25 | 2023-05-13 18:42:47 | Clinton St &amp; Madison St           | State St &amp; Randolph St          | casual | 2023-05-13 | 05 | 13 | 2023 | Saturday  | 18 |  31.366667 |\n",
       "| 16 | 0604AB197D201117 | electric_bike | 2023-05-29 06:19:30 | 2023-05-29 06:39:50 | DuSable Lake Shore Dr &amp; Monroe St | Michigan Ave &amp; Jackson Blvd     | casual | 2023-05-29 | 05 | 29 | 2023 | Monday    |  6 |  20.333333 |\n",
       "| 17 | AA261364E7500CD1 | classic_bike  | 2023-05-29 17:08:05 | 2023-05-29 17:51:59 | Ashland Ave &amp; Blackhawk St        | Stave St &amp; Armitage Ave         | member | 2023-05-29 | 05 | 29 | 2023 | Monday    | 17 |  43.900000 |\n",
       "| 18 | 6DB13FAE5B7A3673 | docked_bike   | 2023-05-28 20:16:34 | 2023-05-28 22:58:20 | DuSable Lake Shore Dr &amp; Monroe St | Michigan Ave &amp; Jackson Blvd     | casual | 2023-05-28 | 05 | 28 | 2023 | Sunday    | 20 | 161.766667 |\n",
       "| 19 | B02E54E6F7E987CE | electric_bike | 2023-05-18 13:10:29 | 2023-05-18 13:17:32 | Benson Ave &amp; Church St            | Evanston Civic Center           | member | 2023-05-18 | 05 | 18 | 2023 | Thursday  | 13 |   7.050000 |\n",
       "| 20 | 09732545D9374E17 | classic_bike  | 2023-05-29 22:12:34 | 2023-05-29 22:29:37 | Clifton Ave &amp; Armitage Ave        | Clark St &amp; Wellington Ave       | member | 2023-05-29 | 05 | 29 | 2023 | Monday    | 22 |  17.050000 |\n",
       "| 21 | 2A979757D6205BF8 | electric_bike | 2023-05-06 20:46:13 | 2023-05-06 20:57:38 | Sedgwick St &amp; North Ave           | Halsted St &amp; Roscoe St          | member | 2023-05-06 | 05 | 06 | 2023 | Saturday  | 20 |  11.416667 |\n",
       "| 22 | 2471A931E49C9577 | classic_bike  | 2023-05-26 18:41:13 | 2023-05-26 19:01:24 | Broadway &amp; Belmont Ave            | Halsted St &amp; Roscoe St          | member | 2023-05-26 | 05 | 26 | 2023 | Friday    | 18 |  20.183333 |\n",
       "| 23 | 7A3C84F9FDC88B8A | classic_bike  | 2023-05-23 13:44:35 | 2023-05-23 13:59:36 | Spaulding Ave &amp; Armitage Ave      | Walsh Park                      | member | 2023-05-23 | 05 | 23 | 2023 | Tuesday   | 13 |  15.016667 |\n",
       "| 24 | 08E60474BB77A09F | classic_bike  | 2023-05-30 20:35:26 | 2023-05-30 20:39:35 | LaSalle St &amp; Illinois St          | Wabash Ave &amp; Grand Ave          | member | 2023-05-30 | 05 | 30 | 2023 | Tuesday   | 20 |   4.150000 |\n",
       "| 25 | 7EE50FF1E3B1160A | electric_bike | 2023-05-28 21:53:01 | 2023-05-28 22:05:33 | Troy St &amp; North Ave               | Milwaukee Ave &amp; Fullerton Ave   | member | 2023-05-28 | 05 | 28 | 2023 | Sunday    | 21 |  12.533333 |\n",
       "| 26 | C7455E1721AA4064 | docked_bike   | 2023-05-27 11:14:09 | 2023-05-27 11:41:23 | DuSable Lake Shore Dr &amp; Monroe St | Michigan Ave &amp; Washington St    | casual | 2023-05-27 | 05 | 27 | 2023 | Saturday  | 11 |  27.233333 |\n",
       "| 27 | 3EE3C51D01AF833E | classic_bike  | 2023-05-18 08:39:49 | 2023-05-18 08:48:48 | Clinton St &amp; Madison St           | Franklin St &amp; Chicago Ave       | member | 2023-05-18 | 05 | 18 | 2023 | Thursday  |  8 |   8.983333 |\n",
       "| 28 | 8706010AD2367F04 | classic_bike  | 2023-05-09 10:26:45 | 2023-05-09 10:34:08 | Clinton St &amp; Madison St           | Michigan Ave &amp; Washington St    | member | 2023-05-09 | 05 | 09 | 2023 | Tuesday   | 10 |   7.383333 |\n",
       "| 29 | 68DA3F41B67D2B2D | electric_bike | 2023-05-13 16:11:36 | 2023-05-13 17:00:02 | DuSable Lake Shore Dr &amp; Monroe St | Lakefront Trail &amp; Bryn Mawr Ave | casual | 2023-05-13 | 05 | 13 | 2023 | Saturday  | 16 |  48.433333 |\n",
       "| 30 | D97B7202D327A6F9 | electric_bike | 2023-05-18 21:31:29 | 2023-05-18 21:43:15 | Clark St &amp; Schiller St            | Clark St &amp; Wrightwood Ave       | member | 2023-05-18 | 05 | 18 | 2023 | Thursday  | 21 |  11.766667 |\n",
       "| 31 | E8D982A6E865D5E5 | classic_bike  | 2023-05-10 08:28:14 | 2023-05-10 08:41:45 | Carpenter St &amp; Huron St           | Canal St &amp; Jackson Blvd         | member | 2023-05-10 | 05 | 10 | 2023 | Wednesday |  8 |  13.516667 |\n",
       "| 32 | E7365FF30A17CBDA | classic_bike  | 2023-05-26 06:35:02 | 2023-05-26 06:58:12 | Shore Dr &amp; 55th St                | Cottage Grove Ave &amp; 63rd St     | member | 2023-05-26 | 05 | 26 | 2023 | Friday    |  6 |  23.166667 |\n",
       "| 33 | C6E532697FDA66F0 | electric_bike | 2023-05-21 15:56:00 | 2023-05-21 16:00:36 | Spaulding Ave &amp; Armitage Ave      | St. Louis Ave &amp; Fullerton Ave   | member | 2023-05-21 | 05 | 21 | 2023 | Sunday    | 15 |   4.600000 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 5737964 | 5071F3E9D6D0CA73 | electric_bike | 2024-04-14 11:49:16 | 2024-04-14 12:33:49 | Michigan Ave &amp; 14th St       | California Ave &amp; Milwaukee Ave | member | 2024-04-14 | 04 | 14 | 2024 | Sunday    | 11 | 44.550000 |\n",
       "| 5737991 | 8DCFE65D5ADC30C9 | electric_bike | 2024-04-17 18:04:06 | 2024-04-17 18:15:03 | Clinton St &amp; Washington Blvd | Wood St &amp; Chicago Ave          | member | 2024-04-17 | 04 | 17 | 2024 | Wednesday | 18 | 10.950000 |\n",
       "| 5737995 | 0D4E4FDDD7B07CF5 | classic_bike  | 2024-04-12 00:31:38 | 2024-04-12 00:40:51 | Leavitt St &amp; Addison St      | Western Ave &amp; Roscoe St        | member | 2024-04-12 | 04 | 12 | 2024 | Friday    |  0 |  9.216667 |\n",
       "| 5738008 | C5802ECA93244E0D | electric_bike | 2024-04-10 18:08:05 | 2024-04-10 18:39:18 | Fairbanks Ct &amp; Grand Ave     | California Ave &amp; Milwaukee Ave | member | 2024-04-10 | 04 | 10 | 2024 | Wednesday | 18 | 31.216667 |\n",
       "| 5738025 | EE10C427ED4F128B | electric_bike | 2024-04-11 18:12:33 | 2024-04-11 18:31:34 | Clark St &amp; 9th St (AMLI)     | Wood St &amp; Chicago Ave          | member | 2024-04-11 | 04 | 11 | 2024 | Thursday  | 18 | 19.016667 |\n",
       "| 5738054 | 1DCE899055771296 | electric_bike | 2024-04-14 11:49:12 | 2024-04-14 12:33:45 | Michigan Ave &amp; 14th St       | California Ave &amp; Milwaukee Ave | member | 2024-04-14 | 04 | 14 | 2024 | Sunday    | 11 | 44.550000 |\n",
       "| 5738096 | 6A8210EAE35174A6 | classic_bike  | 2024-04-27 20:52:47 | 2024-04-27 20:59:51 | Leavitt St &amp; Addison St      | Western Ave &amp; Roscoe St        | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday  | 20 |  7.066667 |\n",
       "| 5738097 | 383A6EDB9466BACB | classic_bike  | 2024-04-28 00:03:26 | 2024-04-28 00:12:14 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | casual | 2024-04-28 | 04 | 28 | 2024 | Sunday    |  0 |  8.800000 |\n",
       "| 5738098 | 792A192FF8694960 | classic_bike  | 2024-04-27 20:53:00 | 2024-04-27 20:59:38 | Leavitt St &amp; Addison St      | Western Ave &amp; Roscoe St        | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday  | 20 |  6.633333 |\n",
       "| 5738107 | 22D54FFD770ED9D7 | electric_bike | 2024-04-25 06:43:44 | 2024-04-25 07:08:00 | California Ave &amp; Cortez St   | California Ave &amp; Division St   | member | 2024-04-25 | 04 | 25 | 2024 | Thursday  |  6 | 24.266667 |\n",
       "| 5738114 | A73A3C8381B43403 | classic_bike  | 2024-04-12 08:36:46 | 2024-04-12 08:45:34 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | member | 2024-04-12 | 04 | 12 | 2024 | Friday    |  8 |  8.800000 |\n",
       "| 5738119 | 95344091DEF0C011 | electric_bike | 2024-04-11 17:53:10 | 2024-04-11 18:07:59 | Leavitt St &amp; Addison St      | California Ave &amp; Milwaukee Ave | member | 2024-04-11 | 04 | 11 | 2024 | Thursday  | 17 | 14.816667 |\n",
       "| 5738165 | 4A76B0B26BA13EBE | electric_bike | 2024-04-27 14:16:10 | 2024-04-27 14:28:59 | Clinton St &amp; Washington Blvd | Wood St &amp; Chicago Ave          | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday  | 14 | 12.816667 |\n",
       "| 5738200 | C43AFD7D28FE14D0 | electric_bike | 2024-04-02 18:46:53 | 2024-04-02 18:55:45 | Clinton St &amp; Washington Blvd | Wood St &amp; Chicago Ave          | member | 2024-04-02 | 04 | 02 | 2024 | Tuesday   | 18 |  8.866667 |\n",
       "| 5738239 | 9EF7DBF34D06ADFC | classic_bike  | 2024-04-27 20:52:16 | 2024-04-27 20:59:48 | Leavitt St &amp; Addison St      | Western Ave &amp; Roscoe St        | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday  | 20 |  7.533333 |\n",
       "| 5738241 | A55BBDEA8801DF2B | classic_bike  | 2024-04-28 00:04:08 | 2024-04-28 00:12:12 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | casual | 2024-04-28 | 04 | 28 | 2024 | Sunday    |  0 |  8.066667 |\n",
       "| 5738243 | 4436CB785CD773F7 | electric_bike | 2024-04-24 16:45:06 | 2024-04-24 16:53:14 | California Ave &amp; Cortez St   | Wood St &amp; Chicago Ave          | casual | 2024-04-24 | 04 | 24 | 2024 | Wednesday | 16 |  8.133333 |\n",
       "| 5738283 | 7C99ACB892B8289B | classic_bike  | 2024-04-30 17:50:27 | 2024-04-30 18:29:27 | Clinton St &amp; Washington Blvd | Campbell Ave &amp; Montrose Ave    | member | 2024-04-30 | 04 | 30 | 2024 | Tuesday   | 17 | 39.000000 |\n",
       "| 5738288 | 4B3A22621BAEA218 | classic_bike  | 2024-04-15 09:28:02 | 2024-04-15 09:39:34 | California Ave &amp; Cortez St   | Kedzie Ave &amp; Lake St           | member | 2024-04-15 | 04 | 15 | 2024 | Monday    |  9 | 11.533333 |\n",
       "| 5738319 | FB7715517FCCFE18 | classic_bike  | 2024-04-08 18:24:31 | 2024-04-08 18:39:16 | Clinton St &amp; Washington Blvd | Wood St &amp; Chicago Ave          | casual | 2024-04-08 | 04 | 08 | 2024 | Monday    | 18 | 14.750000 |\n",
       "| 5738338 | FB8B5AD4F79CAD92 | classic_bike  | 2024-04-27 17:17:00 | 2024-04-27 17:38:54 | Clark St &amp; Lincoln Ave       | California Ave &amp; Milwaukee Ave | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday  | 17 | 21.900000 |\n",
       "| 5738397 | 3F33E1EE4AE49488 | electric_bike | 2024-04-05 21:00:16 | 2024-04-05 21:02:39 | California Ave &amp; Cortez St   | California Ave &amp; Division St   | member | 2024-04-05 | 04 | 05 | 2024 | Friday    | 21 |  2.383333 |\n",
       "| 5738421 | 14C2493FDCC8DB09 | classic_bike  | 2024-04-16 16:12:47 | 2024-04-16 16:37:43 | Clinton St &amp; Washington Blvd | California Ave &amp; Milwaukee Ave | member | 2024-04-16 | 04 | 16 | 2024 | Tuesday   | 16 | 24.933333 |\n",
       "| 5738426 | 116A5F5E8DF68CAC | electric_bike | 2024-04-25 18:09:00 | 2024-04-25 18:16:08 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | member | 2024-04-25 | 04 | 25 | 2024 | Thursday  | 18 |  7.133333 |\n",
       "| 5738449 | D2962E716B35E393 | electric_bike | 2024-04-22 20:52:49 | 2024-04-22 20:59:55 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | casual | 2024-04-22 | 04 | 22 | 2024 | Monday    | 20 |  7.100000 |\n",
       "| 5738450 | 9CAD5CA1DA4AC50C | classic_bike  | 2024-04-22 21:05:10 | 2024-04-22 21:16:31 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | casual | 2024-04-22 | 04 | 22 | 2024 | Monday    | 21 | 11.350000 |\n",
       "| 5738459 | AD91174811F39262 | electric_bike | 2024-04-08 10:28:17 | 2024-04-08 10:43:25 | Leavitt St &amp; Addison St      | Campbell Ave &amp; Montrose Ave    | member | 2024-04-08 | 04 | 08 | 2024 | Monday    | 10 | 15.133333 |\n",
       "| 5738575 | 9771E1C1AEEDCB9F | electric_bike | 2024-04-26 20:34:14 | 2024-04-26 20:39:48 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | member | 2024-04-26 | 04 | 26 | 2024 | Friday    | 20 |  5.566667 |\n",
       "| 5738578 | 0B583B099760D2BC | electric_bike | 2024-04-09 07:31:56 | 2024-04-09 07:41:43 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | member | 2024-04-09 | 04 | 09 | 2024 | Tuesday   |  7 |  9.783333 |\n",
       "| 5738609 | 50A275230D6C0492 | classic_bike  | 2024-04-01 19:03:43 | 2024-04-01 19:13:16 | California Ave &amp; Cortez St   | California Ave &amp; Milwaukee Ave | member | 2024-04-01 | 04 | 01 | 2024 | Monday    | 19 |  9.550000 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id          rideable_type started_at          ended_at           \n",
       "4       DDEB93BC2CE9AA77 classic_bike  2023-05-10 16:47:01 2023-05-10 16:59:52\n",
       "5       C07B70172FC92F59 classic_bike  2023-05-09 18:30:34 2023-05-09 18:39:28\n",
       "6       2BA66385DF8F815A classic_bike  2023-05-30 15:01:21 2023-05-30 15:17:00\n",
       "7       31EFCCB05F12D8EF docked_bike   2023-05-09 14:13:40 2023-05-09 14:47:20\n",
       "8       71DFF834E1D3CE0B classic_bike  2023-05-06 16:47:22 2023-05-06 16:52:13\n",
       "9       2117485899B4CEA4 classic_bike  2023-05-15 12:47:26 2023-05-15 13:00:05\n",
       "10      811149F69AAE82DD electric_bike 2023-05-19 05:44:26 2023-05-19 05:47:24\n",
       "11      D71F8A3BB45BDA05 classic_bike  2023-05-13 17:37:12 2023-05-13 17:43:27\n",
       "12      B0E352E3CE2B6EE9 classic_bike  2023-05-05 06:28:09 2023-05-05 06:55:51\n",
       "13      1348715B463F6610 classic_bike  2023-05-15 06:37:34 2023-05-15 07:01:51\n",
       "14      22FD33836A76B947 classic_bike  2023-05-18 20:35:00 2023-05-18 20:47:51\n",
       "15      A59A47089DBA82F4 electric_bike 2023-05-13 18:11:25 2023-05-13 18:42:47\n",
       "16      0604AB197D201117 electric_bike 2023-05-29 06:19:30 2023-05-29 06:39:50\n",
       "17      AA261364E7500CD1 classic_bike  2023-05-29 17:08:05 2023-05-29 17:51:59\n",
       "18      6DB13FAE5B7A3673 docked_bike   2023-05-28 20:16:34 2023-05-28 22:58:20\n",
       "19      B02E54E6F7E987CE electric_bike 2023-05-18 13:10:29 2023-05-18 13:17:32\n",
       "20      09732545D9374E17 classic_bike  2023-05-29 22:12:34 2023-05-29 22:29:37\n",
       "21      2A979757D6205BF8 electric_bike 2023-05-06 20:46:13 2023-05-06 20:57:38\n",
       "22      2471A931E49C9577 classic_bike  2023-05-26 18:41:13 2023-05-26 19:01:24\n",
       "23      7A3C84F9FDC88B8A classic_bike  2023-05-23 13:44:35 2023-05-23 13:59:36\n",
       "24      08E60474BB77A09F classic_bike  2023-05-30 20:35:26 2023-05-30 20:39:35\n",
       "25      7EE50FF1E3B1160A electric_bike 2023-05-28 21:53:01 2023-05-28 22:05:33\n",
       "26      C7455E1721AA4064 docked_bike   2023-05-27 11:14:09 2023-05-27 11:41:23\n",
       "27      3EE3C51D01AF833E classic_bike  2023-05-18 08:39:49 2023-05-18 08:48:48\n",
       "28      8706010AD2367F04 classic_bike  2023-05-09 10:26:45 2023-05-09 10:34:08\n",
       "29      68DA3F41B67D2B2D electric_bike 2023-05-13 16:11:36 2023-05-13 17:00:02\n",
       "30      D97B7202D327A6F9 electric_bike 2023-05-18 21:31:29 2023-05-18 21:43:15\n",
       "31      E8D982A6E865D5E5 classic_bike  2023-05-10 08:28:14 2023-05-10 08:41:45\n",
       "32      E7365FF30A17CBDA classic_bike  2023-05-26 06:35:02 2023-05-26 06:58:12\n",
       "33      C6E532697FDA66F0 electric_bike 2023-05-21 15:56:00 2023-05-21 16:00:36\n",
       "⋮       ⋮                ⋮             ⋮                   ⋮                  \n",
       "5737964 5071F3E9D6D0CA73 electric_bike 2024-04-14 11:49:16 2024-04-14 12:33:49\n",
       "5737991 8DCFE65D5ADC30C9 electric_bike 2024-04-17 18:04:06 2024-04-17 18:15:03\n",
       "5737995 0D4E4FDDD7B07CF5 classic_bike  2024-04-12 00:31:38 2024-04-12 00:40:51\n",
       "5738008 C5802ECA93244E0D electric_bike 2024-04-10 18:08:05 2024-04-10 18:39:18\n",
       "5738025 EE10C427ED4F128B electric_bike 2024-04-11 18:12:33 2024-04-11 18:31:34\n",
       "5738054 1DCE899055771296 electric_bike 2024-04-14 11:49:12 2024-04-14 12:33:45\n",
       "5738096 6A8210EAE35174A6 classic_bike  2024-04-27 20:52:47 2024-04-27 20:59:51\n",
       "5738097 383A6EDB9466BACB classic_bike  2024-04-28 00:03:26 2024-04-28 00:12:14\n",
       "5738098 792A192FF8694960 classic_bike  2024-04-27 20:53:00 2024-04-27 20:59:38\n",
       "5738107 22D54FFD770ED9D7 electric_bike 2024-04-25 06:43:44 2024-04-25 07:08:00\n",
       "5738114 A73A3C8381B43403 classic_bike  2024-04-12 08:36:46 2024-04-12 08:45:34\n",
       "5738119 95344091DEF0C011 electric_bike 2024-04-11 17:53:10 2024-04-11 18:07:59\n",
       "5738165 4A76B0B26BA13EBE electric_bike 2024-04-27 14:16:10 2024-04-27 14:28:59\n",
       "5738200 C43AFD7D28FE14D0 electric_bike 2024-04-02 18:46:53 2024-04-02 18:55:45\n",
       "5738239 9EF7DBF34D06ADFC classic_bike  2024-04-27 20:52:16 2024-04-27 20:59:48\n",
       "5738241 A55BBDEA8801DF2B classic_bike  2024-04-28 00:04:08 2024-04-28 00:12:12\n",
       "5738243 4436CB785CD773F7 electric_bike 2024-04-24 16:45:06 2024-04-24 16:53:14\n",
       "5738283 7C99ACB892B8289B classic_bike  2024-04-30 17:50:27 2024-04-30 18:29:27\n",
       "5738288 4B3A22621BAEA218 classic_bike  2024-04-15 09:28:02 2024-04-15 09:39:34\n",
       "5738319 FB7715517FCCFE18 classic_bike  2024-04-08 18:24:31 2024-04-08 18:39:16\n",
       "5738338 FB8B5AD4F79CAD92 classic_bike  2024-04-27 17:17:00 2024-04-27 17:38:54\n",
       "5738397 3F33E1EE4AE49488 electric_bike 2024-04-05 21:00:16 2024-04-05 21:02:39\n",
       "5738421 14C2493FDCC8DB09 classic_bike  2024-04-16 16:12:47 2024-04-16 16:37:43\n",
       "5738426 116A5F5E8DF68CAC electric_bike 2024-04-25 18:09:00 2024-04-25 18:16:08\n",
       "5738449 D2962E716B35E393 electric_bike 2024-04-22 20:52:49 2024-04-22 20:59:55\n",
       "5738450 9CAD5CA1DA4AC50C classic_bike  2024-04-22 21:05:10 2024-04-22 21:16:31\n",
       "5738459 AD91174811F39262 electric_bike 2024-04-08 10:28:17 2024-04-08 10:43:25\n",
       "5738575 9771E1C1AEEDCB9F electric_bike 2024-04-26 20:34:14 2024-04-26 20:39:48\n",
       "5738578 0B583B099760D2BC electric_bike 2024-04-09 07:31:56 2024-04-09 07:41:43\n",
       "5738609 50A275230D6C0492 classic_bike  2024-04-01 19:03:43 2024-04-01 19:13:16\n",
       "        start_station_name                end_station_name               \n",
       "4       Carpenter St & Huron St           Damen Ave & Cortland St        \n",
       "5       Southport Ave & Clark St          Southport Ave & Belmont Ave    \n",
       "6       Clinton St & Madison St           McClurg Ct & Ohio St           \n",
       "7       DuSable Lake Shore Dr & Monroe St Adler Planetarium              \n",
       "8       Shore Dr & 55th St                Harper Ave & 59th St           \n",
       "9       Clark St & Schiller St            Franklin St & Lake St          \n",
       "10      Clinton St & Madison St           Kingsbury St & Kinzie St       \n",
       "11      Clinton St & Madison St           Kingsbury St & Kinzie St       \n",
       "12      Clark St & Schiller St            Michigan Ave & 8th St          \n",
       "13      Clark St & Schiller St            Michigan Ave & 8th St          \n",
       "14      Clark St & Schiller St            Larrabee St & Division St      \n",
       "15      Clinton St & Madison St           State St & Randolph St         \n",
       "16      DuSable Lake Shore Dr & Monroe St Michigan Ave & Jackson Blvd    \n",
       "17      Ashland Ave & Blackhawk St        Stave St & Armitage Ave        \n",
       "18      DuSable Lake Shore Dr & Monroe St Michigan Ave & Jackson Blvd    \n",
       "19      Benson Ave & Church St            Evanston Civic Center          \n",
       "20      Clifton Ave & Armitage Ave        Clark St & Wellington Ave      \n",
       "21      Sedgwick St & North Ave           Halsted St & Roscoe St         \n",
       "22      Broadway & Belmont Ave            Halsted St & Roscoe St         \n",
       "23      Spaulding Ave & Armitage Ave      Walsh Park                     \n",
       "24      LaSalle St & Illinois St          Wabash Ave & Grand Ave         \n",
       "25      Troy St & North Ave               Milwaukee Ave & Fullerton Ave  \n",
       "26      DuSable Lake Shore Dr & Monroe St Michigan Ave & Washington St   \n",
       "27      Clinton St & Madison St           Franklin St & Chicago Ave      \n",
       "28      Clinton St & Madison St           Michigan Ave & Washington St   \n",
       "29      DuSable Lake Shore Dr & Monroe St Lakefront Trail & Bryn Mawr Ave\n",
       "30      Clark St & Schiller St            Clark St & Wrightwood Ave      \n",
       "31      Carpenter St & Huron St           Canal St & Jackson Blvd        \n",
       "32      Shore Dr & 55th St                Cottage Grove Ave & 63rd St    \n",
       "33      Spaulding Ave & Armitage Ave      St. Louis Ave & Fullerton Ave  \n",
       "⋮       ⋮                                 ⋮                              \n",
       "5737964 Michigan Ave & 14th St            California Ave & Milwaukee Ave \n",
       "5737991 Clinton St & Washington Blvd      Wood St & Chicago Ave          \n",
       "5737995 Leavitt St & Addison St           Western Ave & Roscoe St        \n",
       "5738008 Fairbanks Ct & Grand Ave          California Ave & Milwaukee Ave \n",
       "5738025 Clark St & 9th St (AMLI)          Wood St & Chicago Ave          \n",
       "5738054 Michigan Ave & 14th St            California Ave & Milwaukee Ave \n",
       "5738096 Leavitt St & Addison St           Western Ave & Roscoe St        \n",
       "5738097 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738098 Leavitt St & Addison St           Western Ave & Roscoe St        \n",
       "5738107 California Ave & Cortez St        California Ave & Division St   \n",
       "5738114 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738119 Leavitt St & Addison St           California Ave & Milwaukee Ave \n",
       "5738165 Clinton St & Washington Blvd      Wood St & Chicago Ave          \n",
       "5738200 Clinton St & Washington Blvd      Wood St & Chicago Ave          \n",
       "5738239 Leavitt St & Addison St           Western Ave & Roscoe St        \n",
       "5738241 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738243 California Ave & Cortez St        Wood St & Chicago Ave          \n",
       "5738283 Clinton St & Washington Blvd      Campbell Ave & Montrose Ave    \n",
       "5738288 California Ave & Cortez St        Kedzie Ave & Lake St           \n",
       "5738319 Clinton St & Washington Blvd      Wood St & Chicago Ave          \n",
       "5738338 Clark St & Lincoln Ave            California Ave & Milwaukee Ave \n",
       "5738397 California Ave & Cortez St        California Ave & Division St   \n",
       "5738421 Clinton St & Washington Blvd      California Ave & Milwaukee Ave \n",
       "5738426 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738449 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738450 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738459 Leavitt St & Addison St           Campbell Ave & Montrose Ave    \n",
       "5738575 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738578 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "5738609 California Ave & Cortez St        California Ave & Milwaukee Ave \n",
       "        member_casual date       month day year day_of_week hour trip_length\n",
       "4       member        2023-05-10 05    10  2023 Wednesday   16    12.850000 \n",
       "5       member        2023-05-09 05    09  2023 Tuesday     18     8.900000 \n",
       "6       member        2023-05-30 05    30  2023 Tuesday     15    15.650000 \n",
       "7       casual        2023-05-09 05    09  2023 Tuesday     14    33.666667 \n",
       "8       member        2023-05-06 05    06  2023 Saturday    16     4.850000 \n",
       "9       member        2023-05-15 05    15  2023 Monday      12    12.650000 \n",
       "10      member        2023-05-19 05    19  2023 Friday       5     2.966667 \n",
       "11      member        2023-05-13 05    13  2023 Saturday    17     6.250000 \n",
       "12      member        2023-05-05 05    05  2023 Friday       6    27.700000 \n",
       "13      member        2023-05-15 05    15  2023 Monday       6    24.283333 \n",
       "14      member        2023-05-18 05    18  2023 Thursday    20    12.850000 \n",
       "15      casual        2023-05-13 05    13  2023 Saturday    18    31.366667 \n",
       "16      casual        2023-05-29 05    29  2023 Monday       6    20.333333 \n",
       "17      member        2023-05-29 05    29  2023 Monday      17    43.900000 \n",
       "18      casual        2023-05-28 05    28  2023 Sunday      20   161.766667 \n",
       "19      member        2023-05-18 05    18  2023 Thursday    13     7.050000 \n",
       "20      member        2023-05-29 05    29  2023 Monday      22    17.050000 \n",
       "21      member        2023-05-06 05    06  2023 Saturday    20    11.416667 \n",
       "22      member        2023-05-26 05    26  2023 Friday      18    20.183333 \n",
       "23      member        2023-05-23 05    23  2023 Tuesday     13    15.016667 \n",
       "24      member        2023-05-30 05    30  2023 Tuesday     20     4.150000 \n",
       "25      member        2023-05-28 05    28  2023 Sunday      21    12.533333 \n",
       "26      casual        2023-05-27 05    27  2023 Saturday    11    27.233333 \n",
       "27      member        2023-05-18 05    18  2023 Thursday     8     8.983333 \n",
       "28      member        2023-05-09 05    09  2023 Tuesday     10     7.383333 \n",
       "29      casual        2023-05-13 05    13  2023 Saturday    16    48.433333 \n",
       "30      member        2023-05-18 05    18  2023 Thursday    21    11.766667 \n",
       "31      member        2023-05-10 05    10  2023 Wednesday    8    13.516667 \n",
       "32      member        2023-05-26 05    26  2023 Friday       6    23.166667 \n",
       "33      member        2023-05-21 05    21  2023 Sunday      15     4.600000 \n",
       "⋮       ⋮             ⋮          ⋮     ⋮   ⋮    ⋮           ⋮    ⋮          \n",
       "5737964 member        2024-04-14 04    14  2024 Sunday      11   44.550000  \n",
       "5737991 member        2024-04-17 04    17  2024 Wednesday   18   10.950000  \n",
       "5737995 member        2024-04-12 04    12  2024 Friday       0    9.216667  \n",
       "5738008 member        2024-04-10 04    10  2024 Wednesday   18   31.216667  \n",
       "5738025 member        2024-04-11 04    11  2024 Thursday    18   19.016667  \n",
       "5738054 member        2024-04-14 04    14  2024 Sunday      11   44.550000  \n",
       "5738096 casual        2024-04-27 04    27  2024 Saturday    20    7.066667  \n",
       "5738097 casual        2024-04-28 04    28  2024 Sunday       0    8.800000  \n",
       "5738098 casual        2024-04-27 04    27  2024 Saturday    20    6.633333  \n",
       "5738107 member        2024-04-25 04    25  2024 Thursday     6   24.266667  \n",
       "5738114 member        2024-04-12 04    12  2024 Friday       8    8.800000  \n",
       "5738119 member        2024-04-11 04    11  2024 Thursday    17   14.816667  \n",
       "5738165 casual        2024-04-27 04    27  2024 Saturday    14   12.816667  \n",
       "5738200 member        2024-04-02 04    02  2024 Tuesday     18    8.866667  \n",
       "5738239 casual        2024-04-27 04    27  2024 Saturday    20    7.533333  \n",
       "5738241 casual        2024-04-28 04    28  2024 Sunday       0    8.066667  \n",
       "5738243 casual        2024-04-24 04    24  2024 Wednesday   16    8.133333  \n",
       "5738283 member        2024-04-30 04    30  2024 Tuesday     17   39.000000  \n",
       "5738288 member        2024-04-15 04    15  2024 Monday       9   11.533333  \n",
       "5738319 casual        2024-04-08 04    08  2024 Monday      18   14.750000  \n",
       "5738338 casual        2024-04-27 04    27  2024 Saturday    17   21.900000  \n",
       "5738397 member        2024-04-05 04    05  2024 Friday      21    2.383333  \n",
       "5738421 member        2024-04-16 04    16  2024 Tuesday     16   24.933333  \n",
       "5738426 member        2024-04-25 04    25  2024 Thursday    18    7.133333  \n",
       "5738449 casual        2024-04-22 04    22  2024 Monday      20    7.100000  \n",
       "5738450 casual        2024-04-22 04    22  2024 Monday      21   11.350000  \n",
       "5738459 member        2024-04-08 04    08  2024 Monday      10   15.133333  \n",
       "5738575 member        2024-04-26 04    26  2024 Friday      20    5.566667  \n",
       "5738578 member        2024-04-09 04    09  2024 Tuesday      7    9.783333  \n",
       "5738609 member        2024-04-01 04    01  2024 Monday      19    9.550000  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "print(paste(nrow(allData) - nrow(allDataClean), \"rows were removed.\"))\n",
    "summary(allDataClean) #we removed 1,401,693 rows of data that could have thrown the analysis off\n",
    "View(allDataClean) #What is left is our fully cleaned dataset to use for analysis"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2f5aa331",
   "metadata": {
    "papermill": {
     "duration": 0.013821,
     "end_time": "2024-07-29T23:03:19.957728",
     "exception": false,
     "start_time": "2024-07-29T23:03:19.943907",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 4. Analyze\n",
    "Time to analyze our data and gain some insights about it! We will compare how \"Casual\" and \"Annual\" members use the bike-sharing program differently and identify trends and relationships: \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dfc01df1",
   "metadata": {
    "papermill": {
     "duration": 0.014509,
     "end_time": "2024-07-29T23:03:19.987230",
     "exception": false,
     "start_time": "2024-07-29T23:03:19.972721",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Percentage of Casual Members vs. Annual Members\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "346c73a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:20.020875Z",
     "iopub.status.busy": "2024-07-29T23:03:20.018962Z",
     "iopub.status.idle": "2024-07-29T23:03:20.318587Z",
     "shell.execute_reply": "2024-07-29T23:03:20.316456Z"
    },
    "papermill": {
     "duration": 0.321239,
     "end_time": "2024-07-29T23:03:20.322023",
     "exception": false,
     "start_time": "2024-07-29T23:03:20.000784",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>count</th><th scope=col>%</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1524550</td><td>35.16594</td></tr>\n",
       "\t<tr><td>member</td><td>2810753</td><td>64.83406</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & count & \\%\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1524550 & 35.16594\\\\\n",
       "\t member & 2810753 & 64.83406\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | count &lt;int&gt; | % &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 1524550 | 35.16594 |\n",
       "| member | 2810753 | 64.83406 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual count   %       \n",
       "1 casual        1524550 35.16594\n",
       "2 member        2810753 64.83406"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "allDataClean %>%\n",
    "    group_by(member_casual) %>%\n",
    "    summarise(count = length(ride_id),\n",
    "             '%' = (length(ride_id) / nrow(allDataClean)) * 100)\n",
    "            "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "df1b0039",
   "metadata": {
    "papermill": {
     "duration": 0.013976,
     "end_time": "2024-07-29T23:03:20.350369",
     "exception": false,
     "start_time": "2024-07-29T23:03:20.336393",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### The Mean, Median, Max, and Min of Rides Between Both Memberships Throughout The Year "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "c94ca3bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:20.382397Z",
     "iopub.status.busy": "2024-07-29T23:03:20.380605Z",
     "iopub.status.idle": "2024-07-29T23:03:24.446307Z",
     "shell.execute_reply": "2024-07-29T23:03:24.443945Z"
    },
    "papermill": {
     "duration": 4.085129,
     "end_time": "2024-07-29T23:03:24.449866",
     "exception": false,
     "start_time": "2024-07-29T23:03:20.364737",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4335303 × 14</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>date</th><th scope=col>month</th><th scope=col>day</th><th scope=col>year</th><th scope=col>day_of_week</th><th scope=col>hour</th><th scope=col>trip_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>59AD7EE868FC6588</td><td>docked_bike </td><td>2023-05-30 12:48:08</td><td>2023-06-07 23:04:26</td><td><span style=white-space:pre-wrap>Wells St &amp; Polk St                    </span></td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Roscoe St*              </span></td><td>casual</td><td>2023-05-30</td><td>05</td><td>30</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>12</td><td>12136.300</td></tr>\n",
       "\t<tr><td>FA287922CA358CE0</td><td>docked_bike </td><td>2023-06-03 17:52:15</td><td>2023-06-11 11:44:31</td><td><span style=white-space:pre-wrap>Fort Dearborn Dr &amp; 31st St            </span></td><td><span style=white-space:pre-wrap>Fort Dearborn Dr &amp; 31st St*           </span></td><td>casual</td><td>2023-06-03</td><td>06</td><td>03</td><td>2023</td><td>Saturday </td><td>17</td><td>11152.267</td></tr>\n",
       "\t<tr><td>47158A16C754A9F4</td><td>docked_bike </td><td>2023-08-10 22:17:49</td><td>2023-08-15 17:09:02</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave             </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St                 </span></td><td>casual</td><td>2023-08-10</td><td>08</td><td>10</td><td>2023</td><td>Thursday </td><td>22</td><td> 6891.217</td></tr>\n",
       "\t<tr><td>4031082BC503CC84</td><td>docked_bike </td><td>2023-08-02 17:28:57</td><td>2023-08-06 11:07:57</td><td><span style=white-space:pre-wrap>University Ave &amp; 57th St              </span></td><td><span style=white-space:pre-wrap>Museum of Science and Industry        </span></td><td>casual</td><td>2023-08-02</td><td>08</td><td>02</td><td>2023</td><td>Wednesday</td><td>17</td><td> 5379.000</td></tr>\n",
       "\t<tr><td>3BC5FFFDF7503DAA</td><td>docked_bike </td><td>2023-06-15 13:28:59</td><td>2023-06-18 23:12:06</td><td><span style=white-space:pre-wrap>DuSable Lake Shore Dr &amp; Monroe St     </span></td><td><span style=white-space:pre-wrap>Fort Dearborn Dr &amp; 31st St*           </span></td><td>casual</td><td>2023-06-15</td><td>06</td><td>15</td><td>2023</td><td>Thursday </td><td>13</td><td> 4903.117</td></tr>\n",
       "\t<tr><td>6786F74C5A6183FB</td><td>docked_bike </td><td>2023-06-18 19:21:22</td><td>2023-06-21 10:59:46</td><td><span style=white-space:pre-wrap>Dusable Harbor                        </span></td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; Cermak Rd*            </span></td><td>casual</td><td>2023-06-18</td><td>06</td><td>18</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>19</td><td> 3818.400</td></tr>\n",
       "\t<tr><td>D2273A0F45CDD4CC</td><td>docked_bike </td><td>2023-08-18 09:13:48</td><td>2023-08-20 16:14:38</td><td><span style=white-space:pre-wrap>2112 W Peterson Ave                   </span></td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Loyola Ave              </span></td><td>casual</td><td>2023-08-18</td><td>08</td><td>18</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 9</td><td> 3300.833</td></tr>\n",
       "\t<tr><td>A795B5420E15A65B</td><td>docked_bike </td><td>2023-05-10 18:42:11</td><td>2023-05-13 00:47:58</td><td><span style=white-space:pre-wrap>Clark St &amp; Schiller St                </span></td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Wellington Ave          </span></td><td>casual</td><td>2023-05-10</td><td>05</td><td>10</td><td>2023</td><td>Wednesday</td><td>18</td><td> 3245.783</td></tr>\n",
       "\t<tr><td>280CB8109510E280</td><td>docked_bike </td><td>2023-07-06 21:34:55</td><td>2023-07-08 14:32:46</td><td><span style=white-space:pre-wrap>California Ave &amp; North Ave            </span></td><td><span style=white-space:pre-wrap>Damen Ave &amp; Pierce Ave                </span></td><td>casual</td><td>2023-07-06</td><td>07</td><td>06</td><td>2023</td><td>Thursday </td><td>21</td><td> 2457.850</td></tr>\n",
       "\t<tr><td>81526396CBFBD708</td><td>docked_bike </td><td>2023-05-06 12:53:46</td><td>2023-05-07 18:21:09</td><td><span style=white-space:pre-wrap>DuSable Lake Shore Dr &amp; Monroe St     </span></td><td><span style=white-space:pre-wrap>Morgan St &amp; Lake St*                  </span></td><td>casual</td><td>2023-05-06</td><td>05</td><td>06</td><td>2023</td><td>Saturday </td><td>12</td><td> 1767.383</td></tr>\n",
       "\t<tr><td>7A5CAAC52FAE9E95</td><td>classic_bike</td><td>2024-03-09 16:58:39</td><td>2024-03-10 18:08:01</td><td><span style=white-space:pre-wrap>Talman Ave &amp; Addison St               </span></td><td><span style=white-space:pre-wrap>Talman Ave &amp; Addison St               </span></td><td>casual</td><td>2024-03-09</td><td>03</td><td>09</td><td>2024</td><td>Saturday </td><td>16</td><td> 1509.367</td></tr>\n",
       "\t<tr><td>ABA068CBC4FFDA47</td><td>docked_bike </td><td>2023-07-26 02:23:38</td><td>2023-07-27 03:22:27</td><td><span style=white-space:pre-wrap>Hoyne Ave &amp; 47th St                   </span></td><td><span style=white-space:pre-wrap>Yates Blvd &amp; 75th St                  </span></td><td>casual</td><td>2023-07-26</td><td>07</td><td>26</td><td>2023</td><td>Wednesday</td><td> 2</td><td> 1498.817</td></tr>\n",
       "\t<tr><td>7AC23ADF3F785C89</td><td>classic_bike</td><td>2023-09-29 12:32:03</td><td>2023-09-30 13:29:57</td><td><span style=white-space:pre-wrap>Halsted St &amp; 63rd St                  </span></td><td><span style=white-space:pre-wrap>Halsted St &amp; 63rd St                  </span></td><td>casual</td><td>2023-09-29</td><td>09</td><td>29</td><td>2023</td><td><span style=white-space:pre-wrap>Friday   </span></td><td>12</td><td> 1497.900</td></tr>\n",
       "\t<tr><td>8AFD9583BC85E0DE</td><td>classic_bike</td><td>2024-02-01 17:28:26</td><td>2024-02-02 18:26:05</td><td><span style=white-space:pre-wrap>Benson Ave &amp; Church St                </span></td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Noyes St (NU)           </span></td><td>member</td><td>2024-02-01</td><td>02</td><td>01</td><td>2024</td><td>Thursday </td><td>17</td><td> 1497.650</td></tr>\n",
       "\t<tr><td>2503BA4056C4C83B</td><td>classic_bike</td><td>2023-11-11 11:58:41</td><td>2023-11-12 12:56:11</td><td><span style=white-space:pre-wrap>Montrose Harbor                       </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave                 </span></td><td>member</td><td>2023-11-11</td><td>11</td><td>11</td><td>2023</td><td>Saturday </td><td>11</td><td> 1497.500</td></tr>\n",
       "\t<tr><td>CB93E203A174AC97</td><td>classic_bike</td><td>2023-05-16 18:06:24</td><td>2023-05-17 19:03:53</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave             </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Roscoe St               </span></td><td>casual</td><td>2023-05-16</td><td>05</td><td>16</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>18</td><td> 1497.483</td></tr>\n",
       "\t<tr><td>C65FD7B15C4C410F</td><td>classic_bike</td><td>2023-09-18 17:57:10</td><td>2023-09-19 18:54:33</td><td>DuSable Lake Shore Dr &amp; Wellington Ave</td><td>DuSable Lake Shore Dr &amp; Wellington Ave</td><td>member</td><td>2023-09-18</td><td>09</td><td>18</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>17</td><td> 1497.383</td></tr>\n",
       "\t<tr><td>D1B2433CCB28F892</td><td>classic_bike</td><td>2024-01-17 07:44:28</td><td>2024-01-18 08:41:47</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                   </span></td><td><span style=white-space:pre-wrap>Harper Ave &amp; 59th St                  </span></td><td>member</td><td>2024-01-17</td><td>01</td><td>17</td><td>2024</td><td>Wednesday</td><td> 7</td><td> 1497.317</td></tr>\n",
       "\t<tr><td>3309CF3DBCAD8E84</td><td>docked_bike </td><td>2023-08-20 19:43:06</td><td>2023-08-21 20:40:23</td><td><span style=white-space:pre-wrap>Prairie Ave &amp; 43rd St                 </span></td><td><span style=white-space:pre-wrap>Prairie Ave &amp; 43rd St                 </span></td><td>casual</td><td>2023-08-20</td><td>08</td><td>20</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>19</td><td> 1497.283</td></tr>\n",
       "\t<tr><td>36628734F611A53C</td><td>classic_bike</td><td>2023-06-03 10:40:32</td><td>2023-06-04 11:36:15</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Wrightwood Ave        </span></td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Wrightwood Ave          </span></td><td>casual</td><td>2023-06-03</td><td>06</td><td>03</td><td>2023</td><td>Saturday </td><td>10</td><td> 1495.717</td></tr>\n",
       "\t<tr><td>3B059075C4C39AF9</td><td>classic_bike</td><td>2023-10-01 07:41:37</td><td>2023-10-02 08:37:11</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Cortland St               </span></td><td><span style=white-space:pre-wrap>Damen Ave &amp; Cortland St               </span></td><td>casual</td><td>2023-10-01</td><td>10</td><td>01</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 7</td><td> 1495.567</td></tr>\n",
       "\t<tr><td>9B86B843855F9B4B</td><td>classic_bike</td><td>2024-02-22 12:23:42</td><td>2024-02-23 13:18:26</td><td><span style=white-space:pre-wrap>Cornell Ave &amp; Hyde Park Blvd          </span></td><td><span style=white-space:pre-wrap>Woodlawn Ave &amp; 58th St                </span></td><td>member</td><td>2024-02-22</td><td>02</td><td>22</td><td>2024</td><td>Thursday </td><td>12</td><td> 1494.733</td></tr>\n",
       "\t<tr><td>969C2DB1BE48310D</td><td>classic_bike</td><td>2023-12-12 08:20:24</td><td>2023-12-13 09:14:52</td><td><span style=white-space:pre-wrap>Fairfield Ave &amp; Roosevelt Rd          </span></td><td><span style=white-space:pre-wrap>Wood St &amp; Taylor St (Temp)            </span></td><td>member</td><td>2023-12-12</td><td>12</td><td>12</td><td>2023</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 8</td><td> 1494.467</td></tr>\n",
       "\t<tr><td>85BFC687957CCBB8</td><td>classic_bike</td><td>2024-02-05 09:14:14</td><td>2024-02-06 10:08:40</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd             </span></td><td><span style=white-space:pre-wrap>Halsted St &amp; Polk St                  </span></td><td>member</td><td>2024-02-05</td><td>02</td><td>05</td><td>2024</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 9</td><td> 1494.433</td></tr>\n",
       "\t<tr><td>888DCD04A8601E1E</td><td>classic_bike</td><td>2024-04-09 18:41:23</td><td>2024-04-10 19:34:56</td><td><span style=white-space:pre-wrap>California Ave &amp; Montrose Ave         </span></td><td><span style=white-space:pre-wrap>Manor Ave &amp; Leland Ave                </span></td><td>casual</td><td>2024-04-09</td><td>04</td><td>09</td><td>2024</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>18</td><td> 1493.550</td></tr>\n",
       "\t<tr><td>6EA5C4A03EE52C44</td><td>classic_bike</td><td>2023-07-17 18:57:07</td><td>2023-07-18 19:50:27</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                   </span></td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                   </span></td><td>casual</td><td>2023-07-17</td><td>07</td><td>17</td><td>2023</td><td><span style=white-space:pre-wrap>Monday   </span></td><td>18</td><td> 1493.333</td></tr>\n",
       "\t<tr><td>596C6E432ADA6786</td><td>classic_bike</td><td>2023-08-02 16:26:13</td><td>2023-08-03 17:19:14</td><td><span style=white-space:pre-wrap>Seeley Ave &amp; Roscoe St                </span></td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Roscoe St*              </span></td><td>member</td><td>2023-08-02</td><td>08</td><td>02</td><td>2023</td><td>Wednesday</td><td>16</td><td> 1493.017</td></tr>\n",
       "\t<tr><td>A6AA6DAD829D4861</td><td>classic_bike</td><td>2023-09-02 15:34:43</td><td>2023-09-03 16:27:42</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave               </span></td><td><span style=white-space:pre-wrap>Racine Ave &amp; Randolph St              </span></td><td>casual</td><td>2023-09-02</td><td>09</td><td>02</td><td>2023</td><td>Saturday </td><td>15</td><td> 1492.983</td></tr>\n",
       "\t<tr><td>9C9DBBD2DC872B6A</td><td>classic_bike</td><td>2023-07-22 09:19:03</td><td>2023-07-23 10:11:43</td><td><span style=white-space:pre-wrap>Cornell Ave &amp; Hyde Park Blvd          </span></td><td><span style=white-space:pre-wrap>Cornell Ave &amp; Hyde Park Blvd          </span></td><td>casual</td><td>2023-07-22</td><td>07</td><td>22</td><td>2023</td><td>Saturday </td><td> 9</td><td> 1492.667</td></tr>\n",
       "\t<tr><td>7629FBAAB4B43EFD</td><td>docked_bike </td><td>2023-05-14 11:54:51</td><td>2023-05-15 12:47:25</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Rockwell St           </span></td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Rockwell St           </span></td><td>casual</td><td>2023-05-14</td><td>05</td><td>14</td><td>2023</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td>11</td><td> 1492.567</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>CFA29B1E2B889FCB</td><td>classic_bike </td><td>2024-04-11 17:25:28</td><td>2024-04-11 17:25:29</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Menomonee St               </span></td><td><span style=white-space:pre-wrap>Larrabee St &amp; Menomonee St               </span></td><td>member</td><td>2024-04-11</td><td>04</td><td>11</td><td>2024</td><td>Thursday</td><td>17</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>AF33B6A634E46BC2</td><td>electric_bike</td><td>2024-04-08 14:43:07</td><td>2024-04-08 14:43:08</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td>casual</td><td>2024-04-08</td><td>04</td><td>08</td><td>2024</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>14</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>2D741544D284C6D8</td><td>classic_bike </td><td>2024-04-13 15:35:33</td><td>2024-04-13 15:35:34</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td>casual</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>15</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>5C85A4CDF7B0F83E</td><td>classic_bike </td><td>2024-04-27 13:18:55</td><td>2024-04-27 13:18:56</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave                  </span></td><td>member</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday</td><td>13</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>6C9A1AE9647676A9</td><td>electric_bike</td><td>2024-04-30 08:43:06</td><td>2024-04-30 08:43:07</td><td><span style=white-space:pre-wrap>Francisco Ave &amp; Chicago Ave              </span></td><td><span style=white-space:pre-wrap>Francisco Ave &amp; Chicago Ave              </span></td><td>member</td><td>2024-04-30</td><td>04</td><td>30</td><td>2024</td><td>Tuesday </td><td> 8</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>14B772E8AB698903</td><td>classic_bike </td><td>2024-04-28 15:40:01</td><td>2024-04-28 15:40:02</td><td><span style=white-space:pre-wrap>Canal St &amp; Jackson Blvd                  </span></td><td><span style=white-space:pre-wrap>Canal St &amp; Jackson Blvd                  </span></td><td>casual</td><td>2024-04-28</td><td>04</td><td>28</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday  </span></td><td>15</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>6A21DC61926F5589</td><td>electric_bike</td><td>2024-04-19 18:43:25</td><td>2024-04-19 18:43:26</td><td><span style=white-space:pre-wrap>Western Ave &amp; Gunnison St                </span></td><td><span style=white-space:pre-wrap>Western Ave &amp; Gunnison St                </span></td><td>casual</td><td>2024-04-19</td><td>04</td><td>19</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>18</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>65A10FD5DB42FD72</td><td>electric_bike</td><td>2024-04-27 21:53:36</td><td>2024-04-27 21:53:37</td><td><span style=white-space:pre-wrap>Rush St &amp; Cedar St                       </span></td><td><span style=white-space:pre-wrap>Rush St &amp; Cedar St                       </span></td><td>casual</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday</td><td>21</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>2D580593540C11FF</td><td>classic_bike </td><td>2024-04-26 12:32:56</td><td>2024-04-26 12:32:57</td><td><span style=white-space:pre-wrap>Dearborn Pkwy &amp; Delaware Pl              </span></td><td><span style=white-space:pre-wrap>Dearborn Pkwy &amp; Delaware Pl              </span></td><td>member</td><td>2024-04-26</td><td>04</td><td>26</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>12</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>9CF6524E99B4C788</td><td>classic_bike </td><td>2024-04-27 15:56:37</td><td>2024-04-27 15:56:38</td><td><span style=white-space:pre-wrap>DuSable Lake Shore Dr &amp; North Blvd       </span></td><td><span style=white-space:pre-wrap>DuSable Lake Shore Dr &amp; North Blvd       </span></td><td>member</td><td>2024-04-27</td><td>04</td><td>27</td><td>2024</td><td>Saturday</td><td>15</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>7A9524A8EED2E220</td><td>electric_bike</td><td>2024-04-04 11:58:19</td><td>2024-04-04 11:58:20</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td>casual</td><td>2024-04-04</td><td>04</td><td>04</td><td>2024</td><td>Thursday</td><td>11</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>A92132234B8EB87E</td><td>electric_bike</td><td>2024-04-25 18:12:14</td><td>2024-04-25 18:12:15</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td>member</td><td>2024-04-25</td><td>04</td><td>25</td><td>2024</td><td>Thursday</td><td>18</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>6BE39BEAA5B3E48F</td><td>electric_bike</td><td>2024-04-25 18:11:44</td><td>2024-04-25 18:11:45</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; George St                   </span></td><td>member</td><td>2024-04-25</td><td>04</td><td>25</td><td>2024</td><td>Thursday</td><td>18</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>96F565E5B5264578</td><td>electric_bike</td><td>2024-04-22 17:41:19</td><td>2024-04-22 17:41:20</td><td>Public Rack - Central Ave &amp; Pensacola Ave</td><td>Public Rack - Central Ave &amp; Pensacola Ave</td><td>casual</td><td>2024-04-22</td><td>04</td><td>22</td><td>2024</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>17</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>C72D92E1C2E1930E</td><td>electric_bike</td><td>2024-04-26 22:00:47</td><td>2024-04-26 22:00:48</td><td><span style=white-space:pre-wrap>N Southport Ave &amp; W Newport Ave          </span></td><td><span style=white-space:pre-wrap>N Southport Ave &amp; W Newport Ave          </span></td><td>casual</td><td>2024-04-26</td><td>04</td><td>26</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>22</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>E29DB2AFE4031997</td><td>classic_bike </td><td>2024-04-29 09:24:14</td><td>2024-04-29 09:24:15</td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td>member</td><td>2024-04-29</td><td>04</td><td>29</td><td>2024</td><td><span style=white-space:pre-wrap>Monday  </span></td><td> 9</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>5C870366D06BE552</td><td>classic_bike </td><td>2024-04-16 10:21:15</td><td>2024-04-16 10:21:16</td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td>member</td><td>2024-04-16</td><td>04</td><td>16</td><td>2024</td><td>Tuesday </td><td>10</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>9F48B3F8EF040C9D</td><td>electric_bike</td><td>2024-04-14 01:16:26</td><td>2024-04-14 01:16:27</td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td>member</td><td>2024-04-14</td><td>04</td><td>14</td><td>2024</td><td><span style=white-space:pre-wrap>Sunday  </span></td><td> 1</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>46F656FC810BE5B1</td><td>electric_bike</td><td>2024-04-04 10:53:31</td><td>2024-04-04 10:53:32</td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td><span style=white-space:pre-wrap>Blackstone Ave &amp; 59th St                 </span></td><td>member</td><td>2024-04-04</td><td>04</td><td>04</td><td>2024</td><td>Thursday</td><td>10</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>7B51BF1D1CFBF1C4</td><td>electric_bike</td><td>2024-04-12 08:31:10</td><td>2024-04-12 08:31:11</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-12</td><td>04</td><td>12</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td> 8</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>FEA7D41782C8D4C6</td><td>electric_bike</td><td>2024-04-12 12:45:42</td><td>2024-04-12 12:45:43</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-12</td><td>04</td><td>12</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>12</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>88D65784A0229872</td><td>electric_bike</td><td>2024-04-13 21:26:16</td><td>2024-04-13 21:26:17</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>casual</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>21</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>E650EFCEEACA7911</td><td>electric_bike</td><td>2024-04-13 12:55:09</td><td>2024-04-13 12:55:10</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>12</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>98E14FD9597CF293</td><td>electric_bike</td><td>2024-04-13 12:56:03</td><td>2024-04-13 12:56:04</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>12</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>BFFE877D23CF8072</td><td>electric_bike</td><td>2024-04-13 10:57:17</td><td>2024-04-13 10:57:18</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>10</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>85403A541C6CA215</td><td>electric_bike</td><td>2024-04-12 22:36:24</td><td>2024-04-12 22:36:25</td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td><span style=white-space:pre-wrap>W Washington Blvd &amp; N Peoria St          </span></td><td>member</td><td>2024-04-12</td><td>04</td><td>12</td><td>2024</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>22</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>96CEC7775EEDF506</td><td>electric_bike</td><td>2024-04-22 17:22:31</td><td>2024-04-22 17:22:32</td><td><span style=white-space:pre-wrap>N Carpenter St &amp; W Lake St               </span></td><td><span style=white-space:pre-wrap>N Carpenter St &amp; W Lake St               </span></td><td>member</td><td>2024-04-22</td><td>04</td><td>22</td><td>2024</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>17</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>49838255379679E6</td><td>electric_bike</td><td>2024-04-23 18:40:17</td><td>2024-04-23 18:40:18</td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd             </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd             </span></td><td>member</td><td>2024-04-23</td><td>04</td><td>23</td><td>2024</td><td>Tuesday </td><td>18</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>B72ECE692BAF48D5</td><td>classic_bike </td><td>2024-04-29 18:51:04</td><td>2024-04-29 18:51:05</td><td><span style=white-space:pre-wrap>Mies van der Rohe Way &amp; Chicago Ave      </span></td><td><span style=white-space:pre-wrap>Mies van der Rohe Way &amp; Chicago Ave      </span></td><td>member</td><td>2024-04-29</td><td>04</td><td>29</td><td>2024</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>18</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>6647CA791B143A1B</td><td>classic_bike </td><td>2024-04-13 12:59:23</td><td>2024-04-13 12:59:24</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                      </span></td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                      </span></td><td>member</td><td>2024-04-13</td><td>04</td><td>13</td><td>2024</td><td>Saturday</td><td>12</td><td>0.01666667</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4335303 × 14\n",
       "\\begin{tabular}{llllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & end\\_station\\_name & member\\_casual & date & month & day & year & day\\_of\\_week & hour & trip\\_length\\\\\n",
       " <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 59AD7EE868FC6588 & docked\\_bike  & 2023-05-30 12:48:08 & 2023-06-07 23:04:26 & Wells St \\& Polk St                     & Lincoln Ave \\& Roscoe St*               & casual & 2023-05-30 & 05 & 30 & 2023 & Tuesday   & 12 & 12136.300\\\\\n",
       "\t FA287922CA358CE0 & docked\\_bike  & 2023-06-03 17:52:15 & 2023-06-11 11:44:31 & Fort Dearborn Dr \\& 31st St             & Fort Dearborn Dr \\& 31st St*            & casual & 2023-06-03 & 06 & 03 & 2023 & Saturday  & 17 & 11152.267\\\\\n",
       "\t 47158A16C754A9F4 & docked\\_bike  & 2023-08-10 22:17:49 & 2023-08-15 17:09:02 & Larrabee St \\& Webster Ave              & Michigan Ave \\& Oak St                  & casual & 2023-08-10 & 08 & 10 & 2023 & Thursday  & 22 &  6891.217\\\\\n",
       "\t 4031082BC503CC84 & docked\\_bike  & 2023-08-02 17:28:57 & 2023-08-06 11:07:57 & University Ave \\& 57th St               & Museum of Science and Industry         & casual & 2023-08-02 & 08 & 02 & 2023 & Wednesday & 17 &  5379.000\\\\\n",
       "\t 3BC5FFFDF7503DAA & docked\\_bike  & 2023-06-15 13:28:59 & 2023-06-18 23:12:06 & DuSable Lake Shore Dr \\& Monroe St      & Fort Dearborn Dr \\& 31st St*            & casual & 2023-06-15 & 06 & 15 & 2023 & Thursday  & 13 &  4903.117\\\\\n",
       "\t 6786F74C5A6183FB & docked\\_bike  & 2023-06-18 19:21:22 & 2023-06-21 10:59:46 & Dusable Harbor                         & Wentworth Ave \\& Cermak Rd*             & casual & 2023-06-18 & 06 & 18 & 2023 & Sunday    & 19 &  3818.400\\\\\n",
       "\t D2273A0F45CDD4CC & docked\\_bike  & 2023-08-18 09:13:48 & 2023-08-20 16:14:38 & 2112 W Peterson Ave                    & Sheridan Rd \\& Loyola Ave               & casual & 2023-08-18 & 08 & 18 & 2023 & Friday    &  9 &  3300.833\\\\\n",
       "\t A795B5420E15A65B & docked\\_bike  & 2023-05-10 18:42:11 & 2023-05-13 00:47:58 & Clark St \\& Schiller St                 & Ashland Ave \\& Wellington Ave           & casual & 2023-05-10 & 05 & 10 & 2023 & Wednesday & 18 &  3245.783\\\\\n",
       "\t 280CB8109510E280 & docked\\_bike  & 2023-07-06 21:34:55 & 2023-07-08 14:32:46 & California Ave \\& North Ave             & Damen Ave \\& Pierce Ave                 & casual & 2023-07-06 & 07 & 06 & 2023 & Thursday  & 21 &  2457.850\\\\\n",
       "\t 81526396CBFBD708 & docked\\_bike  & 2023-05-06 12:53:46 & 2023-05-07 18:21:09 & DuSable Lake Shore Dr \\& Monroe St      & Morgan St \\& Lake St*                   & casual & 2023-05-06 & 05 & 06 & 2023 & Saturday  & 12 &  1767.383\\\\\n",
       "\t 7A5CAAC52FAE9E95 & classic\\_bike & 2024-03-09 16:58:39 & 2024-03-10 18:08:01 & Talman Ave \\& Addison St                & Talman Ave \\& Addison St                & casual & 2024-03-09 & 03 & 09 & 2024 & Saturday  & 16 &  1509.367\\\\\n",
       "\t ABA068CBC4FFDA47 & docked\\_bike  & 2023-07-26 02:23:38 & 2023-07-27 03:22:27 & Hoyne Ave \\& 47th St                    & Yates Blvd \\& 75th St                   & casual & 2023-07-26 & 07 & 26 & 2023 & Wednesday &  2 &  1498.817\\\\\n",
       "\t 7AC23ADF3F785C89 & classic\\_bike & 2023-09-29 12:32:03 & 2023-09-30 13:29:57 & Halsted St \\& 63rd St                   & Halsted St \\& 63rd St                   & casual & 2023-09-29 & 09 & 29 & 2023 & Friday    & 12 &  1497.900\\\\\n",
       "\t 8AFD9583BC85E0DE & classic\\_bike & 2024-02-01 17:28:26 & 2024-02-02 18:26:05 & Benson Ave \\& Church St                 & Sheridan Rd \\& Noyes St (NU)            & member & 2024-02-01 & 02 & 01 & 2024 & Thursday  & 17 &  1497.650\\\\\n",
       "\t 2503BA4056C4C83B & classic\\_bike & 2023-11-11 11:58:41 & 2023-11-12 12:56:11 & Montrose Harbor                        & Clark St \\& Leland Ave                  & member & 2023-11-11 & 11 & 11 & 2023 & Saturday  & 11 &  1497.500\\\\\n",
       "\t CB93E203A174AC97 & classic\\_bike & 2023-05-16 18:06:24 & 2023-05-17 19:03:53 & Larrabee St \\& Webster Ave              & Western Ave \\& Roscoe St                & casual & 2023-05-16 & 05 & 16 & 2023 & Tuesday   & 18 &  1497.483\\\\\n",
       "\t C65FD7B15C4C410F & classic\\_bike & 2023-09-18 17:57:10 & 2023-09-19 18:54:33 & DuSable Lake Shore Dr \\& Wellington Ave & DuSable Lake Shore Dr \\& Wellington Ave & member & 2023-09-18 & 09 & 18 & 2023 & Monday    & 17 &  1497.383\\\\\n",
       "\t D1B2433CCB28F892 & classic\\_bike & 2024-01-17 07:44:28 & 2024-01-18 08:41:47 & Ellis Ave \\& 60th St                    & Harper Ave \\& 59th St                   & member & 2024-01-17 & 01 & 17 & 2024 & Wednesday &  7 &  1497.317\\\\\n",
       "\t 3309CF3DBCAD8E84 & docked\\_bike  & 2023-08-20 19:43:06 & 2023-08-21 20:40:23 & Prairie Ave \\& 43rd St                  & Prairie Ave \\& 43rd St                  & casual & 2023-08-20 & 08 & 20 & 2023 & Sunday    & 19 &  1497.283\\\\\n",
       "\t 36628734F611A53C & classic\\_bike & 2023-06-03 10:40:32 & 2023-06-04 11:36:15 & Sheffield Ave \\& Wrightwood Ave         & Ashland Ave \\& Wrightwood Ave           & casual & 2023-06-03 & 06 & 03 & 2023 & Saturday  & 10 &  1495.717\\\\\n",
       "\t 3B059075C4C39AF9 & classic\\_bike & 2023-10-01 07:41:37 & 2023-10-02 08:37:11 & Damen Ave \\& Cortland St                & Damen Ave \\& Cortland St                & casual & 2023-10-01 & 10 & 01 & 2023 & Sunday    &  7 &  1495.567\\\\\n",
       "\t 9B86B843855F9B4B & classic\\_bike & 2024-02-22 12:23:42 & 2024-02-23 13:18:26 & Cornell Ave \\& Hyde Park Blvd           & Woodlawn Ave \\& 58th St                 & member & 2024-02-22 & 02 & 22 & 2024 & Thursday  & 12 &  1494.733\\\\\n",
       "\t 969C2DB1BE48310D & classic\\_bike & 2023-12-12 08:20:24 & 2023-12-13 09:14:52 & Fairfield Ave \\& Roosevelt Rd           & Wood St \\& Taylor St (Temp)             & member & 2023-12-12 & 12 & 12 & 2023 & Tuesday   &  8 &  1494.467\\\\\n",
       "\t 85BFC687957CCBB8 & classic\\_bike & 2024-02-05 09:14:14 & 2024-02-06 10:08:40 & Wabash Ave \\& Roosevelt Rd              & Halsted St \\& Polk St                   & member & 2024-02-05 & 02 & 05 & 2024 & Monday    &  9 &  1494.433\\\\\n",
       "\t 888DCD04A8601E1E & classic\\_bike & 2024-04-09 18:41:23 & 2024-04-10 19:34:56 & California Ave \\& Montrose Ave          & Manor Ave \\& Leland Ave                 & casual & 2024-04-09 & 04 & 09 & 2024 & Tuesday   & 18 &  1493.550\\\\\n",
       "\t 6EA5C4A03EE52C44 & classic\\_bike & 2023-07-17 18:57:07 & 2023-07-18 19:50:27 & Ellis Ave \\& 60th St                    & Ellis Ave \\& 60th St                    & casual & 2023-07-17 & 07 & 17 & 2023 & Monday    & 18 &  1493.333\\\\\n",
       "\t 596C6E432ADA6786 & classic\\_bike & 2023-08-02 16:26:13 & 2023-08-03 17:19:14 & Seeley Ave \\& Roscoe St                 & Lincoln Ave \\& Roscoe St*               & member & 2023-08-02 & 08 & 02 & 2023 & Wednesday & 16 &  1493.017\\\\\n",
       "\t A6AA6DAD829D4861 & classic\\_bike & 2023-09-02 15:34:43 & 2023-09-03 16:27:42 & Streeter Dr \\& Grand Ave                & Racine Ave \\& Randolph St               & casual & 2023-09-02 & 09 & 02 & 2023 & Saturday  & 15 &  1492.983\\\\\n",
       "\t 9C9DBBD2DC872B6A & classic\\_bike & 2023-07-22 09:19:03 & 2023-07-23 10:11:43 & Cornell Ave \\& Hyde Park Blvd           & Cornell Ave \\& Hyde Park Blvd           & casual & 2023-07-22 & 07 & 22 & 2023 & Saturday  &  9 &  1492.667\\\\\n",
       "\t 7629FBAAB4B43EFD & docked\\_bike  & 2023-05-14 11:54:51 & 2023-05-15 12:47:25 & Milwaukee Ave \\& Rockwell St            & Milwaukee Ave \\& Rockwell St            & casual & 2023-05-14 & 05 & 14 & 2023 & Sunday    & 11 &  1492.567\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t CFA29B1E2B889FCB & classic\\_bike  & 2024-04-11 17:25:28 & 2024-04-11 17:25:29 & Larrabee St \\& Menomonee St                & Larrabee St \\& Menomonee St                & member & 2024-04-11 & 04 & 11 & 2024 & Thursday & 17 & 0.01666667\\\\\n",
       "\t AF33B6A634E46BC2 & electric\\_bike & 2024-04-08 14:43:07 & 2024-04-08 14:43:08 & Streeter Dr \\& Grand Ave                   & Streeter Dr \\& Grand Ave                   & casual & 2024-04-08 & 04 & 08 & 2024 & Monday   & 14 & 0.01666667\\\\\n",
       "\t 2D741544D284C6D8 & classic\\_bike  & 2024-04-13 15:35:33 & 2024-04-13 15:35:34 & Streeter Dr \\& Grand Ave                   & Streeter Dr \\& Grand Ave                   & casual & 2024-04-13 & 04 & 13 & 2024 & Saturday & 15 & 0.01666667\\\\\n",
       "\t 5C85A4CDF7B0F83E & classic\\_bike  & 2024-04-27 13:18:55 & 2024-04-27 13:18:56 & Streeter Dr \\& Grand Ave                   & Streeter Dr \\& Grand Ave                   & member & 2024-04-27 & 04 & 27 & 2024 & Saturday & 13 & 0.01666667\\\\\n",
       "\t 6C9A1AE9647676A9 & electric\\_bike & 2024-04-30 08:43:06 & 2024-04-30 08:43:07 & Francisco Ave \\& Chicago Ave               & Francisco Ave \\& Chicago Ave               & member & 2024-04-30 & 04 & 30 & 2024 & Tuesday  &  8 & 0.01666667\\\\\n",
       "\t 14B772E8AB698903 & classic\\_bike  & 2024-04-28 15:40:01 & 2024-04-28 15:40:02 & Canal St \\& Jackson Blvd                   & Canal St \\& Jackson Blvd                   & casual & 2024-04-28 & 04 & 28 & 2024 & Sunday   & 15 & 0.01666667\\\\\n",
       "\t 6A21DC61926F5589 & electric\\_bike & 2024-04-19 18:43:25 & 2024-04-19 18:43:26 & Western Ave \\& Gunnison St                 & Western Ave \\& Gunnison St                 & casual & 2024-04-19 & 04 & 19 & 2024 & Friday   & 18 & 0.01666667\\\\\n",
       "\t 65A10FD5DB42FD72 & electric\\_bike & 2024-04-27 21:53:36 & 2024-04-27 21:53:37 & Rush St \\& Cedar St                        & Rush St \\& Cedar St                        & casual & 2024-04-27 & 04 & 27 & 2024 & Saturday & 21 & 0.01666667\\\\\n",
       "\t 2D580593540C11FF & classic\\_bike  & 2024-04-26 12:32:56 & 2024-04-26 12:32:57 & Dearborn Pkwy \\& Delaware Pl               & Dearborn Pkwy \\& Delaware Pl               & member & 2024-04-26 & 04 & 26 & 2024 & Friday   & 12 & 0.01666667\\\\\n",
       "\t 9CF6524E99B4C788 & classic\\_bike  & 2024-04-27 15:56:37 & 2024-04-27 15:56:38 & DuSable Lake Shore Dr \\& North Blvd        & DuSable Lake Shore Dr \\& North Blvd        & member & 2024-04-27 & 04 & 27 & 2024 & Saturday & 15 & 0.01666667\\\\\n",
       "\t 7A9524A8EED2E220 & electric\\_bike & 2024-04-04 11:58:19 & 2024-04-04 11:58:20 & Kedzie Ave \\& George St                    & Kedzie Ave \\& George St                    & casual & 2024-04-04 & 04 & 04 & 2024 & Thursday & 11 & 0.01666667\\\\\n",
       "\t A92132234B8EB87E & electric\\_bike & 2024-04-25 18:12:14 & 2024-04-25 18:12:15 & Kedzie Ave \\& George St                    & Kedzie Ave \\& George St                    & member & 2024-04-25 & 04 & 25 & 2024 & Thursday & 18 & 0.01666667\\\\\n",
       "\t 6BE39BEAA5B3E48F & electric\\_bike & 2024-04-25 18:11:44 & 2024-04-25 18:11:45 & Kedzie Ave \\& George St                    & Kedzie Ave \\& George St                    & member & 2024-04-25 & 04 & 25 & 2024 & Thursday & 18 & 0.01666667\\\\\n",
       "\t 96F565E5B5264578 & electric\\_bike & 2024-04-22 17:41:19 & 2024-04-22 17:41:20 & Public Rack - Central Ave \\& Pensacola Ave & Public Rack - Central Ave \\& Pensacola Ave & casual & 2024-04-22 & 04 & 22 & 2024 & Monday   & 17 & 0.01666667\\\\\n",
       "\t C72D92E1C2E1930E & electric\\_bike & 2024-04-26 22:00:47 & 2024-04-26 22:00:48 & N Southport Ave \\& W Newport Ave           & N Southport Ave \\& W Newport Ave           & casual & 2024-04-26 & 04 & 26 & 2024 & Friday   & 22 & 0.01666667\\\\\n",
       "\t E29DB2AFE4031997 & classic\\_bike  & 2024-04-29 09:24:14 & 2024-04-29 09:24:15 & Blackstone Ave \\& 59th St                  & Blackstone Ave \\& 59th St                  & member & 2024-04-29 & 04 & 29 & 2024 & Monday   &  9 & 0.01666667\\\\\n",
       "\t 5C870366D06BE552 & classic\\_bike  & 2024-04-16 10:21:15 & 2024-04-16 10:21:16 & Blackstone Ave \\& 59th St                  & Blackstone Ave \\& 59th St                  & member & 2024-04-16 & 04 & 16 & 2024 & Tuesday  & 10 & 0.01666667\\\\\n",
       "\t 9F48B3F8EF040C9D & electric\\_bike & 2024-04-14 01:16:26 & 2024-04-14 01:16:27 & Blackstone Ave \\& 59th St                  & Blackstone Ave \\& 59th St                  & member & 2024-04-14 & 04 & 14 & 2024 & Sunday   &  1 & 0.01666667\\\\\n",
       "\t 46F656FC810BE5B1 & electric\\_bike & 2024-04-04 10:53:31 & 2024-04-04 10:53:32 & Blackstone Ave \\& 59th St                  & Blackstone Ave \\& 59th St                  & member & 2024-04-04 & 04 & 04 & 2024 & Thursday & 10 & 0.01666667\\\\\n",
       "\t 7B51BF1D1CFBF1C4 & electric\\_bike & 2024-04-12 08:31:10 & 2024-04-12 08:31:11 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-12 & 04 & 12 & 2024 & Friday   &  8 & 0.01666667\\\\\n",
       "\t FEA7D41782C8D4C6 & electric\\_bike & 2024-04-12 12:45:42 & 2024-04-12 12:45:43 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-12 & 04 & 12 & 2024 & Friday   & 12 & 0.01666667\\\\\n",
       "\t 88D65784A0229872 & electric\\_bike & 2024-04-13 21:26:16 & 2024-04-13 21:26:17 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & casual & 2024-04-13 & 04 & 13 & 2024 & Saturday & 21 & 0.01666667\\\\\n",
       "\t E650EFCEEACA7911 & electric\\_bike & 2024-04-13 12:55:09 & 2024-04-13 12:55:10 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-13 & 04 & 13 & 2024 & Saturday & 12 & 0.01666667\\\\\n",
       "\t 98E14FD9597CF293 & electric\\_bike & 2024-04-13 12:56:03 & 2024-04-13 12:56:04 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-13 & 04 & 13 & 2024 & Saturday & 12 & 0.01666667\\\\\n",
       "\t BFFE877D23CF8072 & electric\\_bike & 2024-04-13 10:57:17 & 2024-04-13 10:57:18 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-13 & 04 & 13 & 2024 & Saturday & 10 & 0.01666667\\\\\n",
       "\t 85403A541C6CA215 & electric\\_bike & 2024-04-12 22:36:24 & 2024-04-12 22:36:25 & W Washington Blvd \\& N Peoria St           & W Washington Blvd \\& N Peoria St           & member & 2024-04-12 & 04 & 12 & 2024 & Friday   & 22 & 0.01666667\\\\\n",
       "\t 96CEC7775EEDF506 & electric\\_bike & 2024-04-22 17:22:31 & 2024-04-22 17:22:32 & N Carpenter St \\& W Lake St                & N Carpenter St \\& W Lake St                & member & 2024-04-22 & 04 & 22 & 2024 & Monday   & 17 & 0.01666667\\\\\n",
       "\t 49838255379679E6 & electric\\_bike & 2024-04-23 18:40:17 & 2024-04-23 18:40:18 & Clinton St \\& Washington Blvd              & Clinton St \\& Washington Blvd              & member & 2024-04-23 & 04 & 23 & 2024 & Tuesday  & 18 & 0.01666667\\\\\n",
       "\t B72ECE692BAF48D5 & classic\\_bike  & 2024-04-29 18:51:04 & 2024-04-29 18:51:05 & Mies van der Rohe Way \\& Chicago Ave       & Mies van der Rohe Way \\& Chicago Ave       & member & 2024-04-29 & 04 & 29 & 2024 & Monday   & 18 & 0.01666667\\\\\n",
       "\t 6647CA791B143A1B & classic\\_bike  & 2024-04-13 12:59:23 & 2024-04-13 12:59:24 & Ellis Ave \\& 60th St                       & Ellis Ave \\& 60th St                       & member & 2024-04-13 & 04 & 13 & 2024 & Saturday & 12 & 0.01666667\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4335303 × 14\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | date &lt;date&gt; | month &lt;chr&gt; | day &lt;chr&gt; | year &lt;chr&gt; | day_of_week &lt;chr&gt; | hour &lt;int&gt; | trip_length &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 59AD7EE868FC6588 | docked_bike  | 2023-05-30 12:48:08 | 2023-06-07 23:04:26 | Wells St &amp; Polk St                     | Lincoln Ave &amp; Roscoe St*               | casual | 2023-05-30 | 05 | 30 | 2023 | Tuesday   | 12 | 12136.300 |\n",
       "| FA287922CA358CE0 | docked_bike  | 2023-06-03 17:52:15 | 2023-06-11 11:44:31 | Fort Dearborn Dr &amp; 31st St             | Fort Dearborn Dr &amp; 31st St*            | casual | 2023-06-03 | 06 | 03 | 2023 | Saturday  | 17 | 11152.267 |\n",
       "| 47158A16C754A9F4 | docked_bike  | 2023-08-10 22:17:49 | 2023-08-15 17:09:02 | Larrabee St &amp; Webster Ave              | Michigan Ave &amp; Oak St                  | casual | 2023-08-10 | 08 | 10 | 2023 | Thursday  | 22 |  6891.217 |\n",
       "| 4031082BC503CC84 | docked_bike  | 2023-08-02 17:28:57 | 2023-08-06 11:07:57 | University Ave &amp; 57th St               | Museum of Science and Industry         | casual | 2023-08-02 | 08 | 02 | 2023 | Wednesday | 17 |  5379.000 |\n",
       "| 3BC5FFFDF7503DAA | docked_bike  | 2023-06-15 13:28:59 | 2023-06-18 23:12:06 | DuSable Lake Shore Dr &amp; Monroe St      | Fort Dearborn Dr &amp; 31st St*            | casual | 2023-06-15 | 06 | 15 | 2023 | Thursday  | 13 |  4903.117 |\n",
       "| 6786F74C5A6183FB | docked_bike  | 2023-06-18 19:21:22 | 2023-06-21 10:59:46 | Dusable Harbor                         | Wentworth Ave &amp; Cermak Rd*             | casual | 2023-06-18 | 06 | 18 | 2023 | Sunday    | 19 |  3818.400 |\n",
       "| D2273A0F45CDD4CC | docked_bike  | 2023-08-18 09:13:48 | 2023-08-20 16:14:38 | 2112 W Peterson Ave                    | Sheridan Rd &amp; Loyola Ave               | casual | 2023-08-18 | 08 | 18 | 2023 | Friday    |  9 |  3300.833 |\n",
       "| A795B5420E15A65B | docked_bike  | 2023-05-10 18:42:11 | 2023-05-13 00:47:58 | Clark St &amp; Schiller St                 | Ashland Ave &amp; Wellington Ave           | casual | 2023-05-10 | 05 | 10 | 2023 | Wednesday | 18 |  3245.783 |\n",
       "| 280CB8109510E280 | docked_bike  | 2023-07-06 21:34:55 | 2023-07-08 14:32:46 | California Ave &amp; North Ave             | Damen Ave &amp; Pierce Ave                 | casual | 2023-07-06 | 07 | 06 | 2023 | Thursday  | 21 |  2457.850 |\n",
       "| 81526396CBFBD708 | docked_bike  | 2023-05-06 12:53:46 | 2023-05-07 18:21:09 | DuSable Lake Shore Dr &amp; Monroe St      | Morgan St &amp; Lake St*                   | casual | 2023-05-06 | 05 | 06 | 2023 | Saturday  | 12 |  1767.383 |\n",
       "| 7A5CAAC52FAE9E95 | classic_bike | 2024-03-09 16:58:39 | 2024-03-10 18:08:01 | Talman Ave &amp; Addison St                | Talman Ave &amp; Addison St                | casual | 2024-03-09 | 03 | 09 | 2024 | Saturday  | 16 |  1509.367 |\n",
       "| ABA068CBC4FFDA47 | docked_bike  | 2023-07-26 02:23:38 | 2023-07-27 03:22:27 | Hoyne Ave &amp; 47th St                    | Yates Blvd &amp; 75th St                   | casual | 2023-07-26 | 07 | 26 | 2023 | Wednesday |  2 |  1498.817 |\n",
       "| 7AC23ADF3F785C89 | classic_bike | 2023-09-29 12:32:03 | 2023-09-30 13:29:57 | Halsted St &amp; 63rd St                   | Halsted St &amp; 63rd St                   | casual | 2023-09-29 | 09 | 29 | 2023 | Friday    | 12 |  1497.900 |\n",
       "| 8AFD9583BC85E0DE | classic_bike | 2024-02-01 17:28:26 | 2024-02-02 18:26:05 | Benson Ave &amp; Church St                 | Sheridan Rd &amp; Noyes St (NU)            | member | 2024-02-01 | 02 | 01 | 2024 | Thursday  | 17 |  1497.650 |\n",
       "| 2503BA4056C4C83B | classic_bike | 2023-11-11 11:58:41 | 2023-11-12 12:56:11 | Montrose Harbor                        | Clark St &amp; Leland Ave                  | member | 2023-11-11 | 11 | 11 | 2023 | Saturday  | 11 |  1497.500 |\n",
       "| CB93E203A174AC97 | classic_bike | 2023-05-16 18:06:24 | 2023-05-17 19:03:53 | Larrabee St &amp; Webster Ave              | Western Ave &amp; Roscoe St                | casual | 2023-05-16 | 05 | 16 | 2023 | Tuesday   | 18 |  1497.483 |\n",
       "| C65FD7B15C4C410F | classic_bike | 2023-09-18 17:57:10 | 2023-09-19 18:54:33 | DuSable Lake Shore Dr &amp; Wellington Ave | DuSable Lake Shore Dr &amp; Wellington Ave | member | 2023-09-18 | 09 | 18 | 2023 | Monday    | 17 |  1497.383 |\n",
       "| D1B2433CCB28F892 | classic_bike | 2024-01-17 07:44:28 | 2024-01-18 08:41:47 | Ellis Ave &amp; 60th St                    | Harper Ave &amp; 59th St                   | member | 2024-01-17 | 01 | 17 | 2024 | Wednesday |  7 |  1497.317 |\n",
       "| 3309CF3DBCAD8E84 | docked_bike  | 2023-08-20 19:43:06 | 2023-08-21 20:40:23 | Prairie Ave &amp; 43rd St                  | Prairie Ave &amp; 43rd St                  | casual | 2023-08-20 | 08 | 20 | 2023 | Sunday    | 19 |  1497.283 |\n",
       "| 36628734F611A53C | classic_bike | 2023-06-03 10:40:32 | 2023-06-04 11:36:15 | Sheffield Ave &amp; Wrightwood Ave         | Ashland Ave &amp; Wrightwood Ave           | casual | 2023-06-03 | 06 | 03 | 2023 | Saturday  | 10 |  1495.717 |\n",
       "| 3B059075C4C39AF9 | classic_bike | 2023-10-01 07:41:37 | 2023-10-02 08:37:11 | Damen Ave &amp; Cortland St                | Damen Ave &amp; Cortland St                | casual | 2023-10-01 | 10 | 01 | 2023 | Sunday    |  7 |  1495.567 |\n",
       "| 9B86B843855F9B4B | classic_bike | 2024-02-22 12:23:42 | 2024-02-23 13:18:26 | Cornell Ave &amp; Hyde Park Blvd           | Woodlawn Ave &amp; 58th St                 | member | 2024-02-22 | 02 | 22 | 2024 | Thursday  | 12 |  1494.733 |\n",
       "| 969C2DB1BE48310D | classic_bike | 2023-12-12 08:20:24 | 2023-12-13 09:14:52 | Fairfield Ave &amp; Roosevelt Rd           | Wood St &amp; Taylor St (Temp)             | member | 2023-12-12 | 12 | 12 | 2023 | Tuesday   |  8 |  1494.467 |\n",
       "| 85BFC687957CCBB8 | classic_bike | 2024-02-05 09:14:14 | 2024-02-06 10:08:40 | Wabash Ave &amp; Roosevelt Rd              | Halsted St &amp; Polk St                   | member | 2024-02-05 | 02 | 05 | 2024 | Monday    |  9 |  1494.433 |\n",
       "| 888DCD04A8601E1E | classic_bike | 2024-04-09 18:41:23 | 2024-04-10 19:34:56 | California Ave &amp; Montrose Ave          | Manor Ave &amp; Leland Ave                 | casual | 2024-04-09 | 04 | 09 | 2024 | Tuesday   | 18 |  1493.550 |\n",
       "| 6EA5C4A03EE52C44 | classic_bike | 2023-07-17 18:57:07 | 2023-07-18 19:50:27 | Ellis Ave &amp; 60th St                    | Ellis Ave &amp; 60th St                    | casual | 2023-07-17 | 07 | 17 | 2023 | Monday    | 18 |  1493.333 |\n",
       "| 596C6E432ADA6786 | classic_bike | 2023-08-02 16:26:13 | 2023-08-03 17:19:14 | Seeley Ave &amp; Roscoe St                 | Lincoln Ave &amp; Roscoe St*               | member | 2023-08-02 | 08 | 02 | 2023 | Wednesday | 16 |  1493.017 |\n",
       "| A6AA6DAD829D4861 | classic_bike | 2023-09-02 15:34:43 | 2023-09-03 16:27:42 | Streeter Dr &amp; Grand Ave                | Racine Ave &amp; Randolph St               | casual | 2023-09-02 | 09 | 02 | 2023 | Saturday  | 15 |  1492.983 |\n",
       "| 9C9DBBD2DC872B6A | classic_bike | 2023-07-22 09:19:03 | 2023-07-23 10:11:43 | Cornell Ave &amp; Hyde Park Blvd           | Cornell Ave &amp; Hyde Park Blvd           | casual | 2023-07-22 | 07 | 22 | 2023 | Saturday  |  9 |  1492.667 |\n",
       "| 7629FBAAB4B43EFD | docked_bike  | 2023-05-14 11:54:51 | 2023-05-15 12:47:25 | Milwaukee Ave &amp; Rockwell St            | Milwaukee Ave &amp; Rockwell St            | casual | 2023-05-14 | 05 | 14 | 2023 | Sunday    | 11 |  1492.567 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| CFA29B1E2B889FCB | classic_bike  | 2024-04-11 17:25:28 | 2024-04-11 17:25:29 | Larrabee St &amp; Menomonee St                | Larrabee St &amp; Menomonee St                | member | 2024-04-11 | 04 | 11 | 2024 | Thursday | 17 | 0.01666667 |\n",
       "| AF33B6A634E46BC2 | electric_bike | 2024-04-08 14:43:07 | 2024-04-08 14:43:08 | Streeter Dr &amp; Grand Ave                   | Streeter Dr &amp; Grand Ave                   | casual | 2024-04-08 | 04 | 08 | 2024 | Monday   | 14 | 0.01666667 |\n",
       "| 2D741544D284C6D8 | classic_bike  | 2024-04-13 15:35:33 | 2024-04-13 15:35:34 | Streeter Dr &amp; Grand Ave                   | Streeter Dr &amp; Grand Ave                   | casual | 2024-04-13 | 04 | 13 | 2024 | Saturday | 15 | 0.01666667 |\n",
       "| 5C85A4CDF7B0F83E | classic_bike  | 2024-04-27 13:18:55 | 2024-04-27 13:18:56 | Streeter Dr &amp; Grand Ave                   | Streeter Dr &amp; Grand Ave                   | member | 2024-04-27 | 04 | 27 | 2024 | Saturday | 13 | 0.01666667 |\n",
       "| 6C9A1AE9647676A9 | electric_bike | 2024-04-30 08:43:06 | 2024-04-30 08:43:07 | Francisco Ave &amp; Chicago Ave               | Francisco Ave &amp; Chicago Ave               | member | 2024-04-30 | 04 | 30 | 2024 | Tuesday  |  8 | 0.01666667 |\n",
       "| 14B772E8AB698903 | classic_bike  | 2024-04-28 15:40:01 | 2024-04-28 15:40:02 | Canal St &amp; Jackson Blvd                   | Canal St &amp; Jackson Blvd                   | casual | 2024-04-28 | 04 | 28 | 2024 | Sunday   | 15 | 0.01666667 |\n",
       "| 6A21DC61926F5589 | electric_bike | 2024-04-19 18:43:25 | 2024-04-19 18:43:26 | Western Ave &amp; Gunnison St                 | Western Ave &amp; Gunnison St                 | casual | 2024-04-19 | 04 | 19 | 2024 | Friday   | 18 | 0.01666667 |\n",
       "| 65A10FD5DB42FD72 | electric_bike | 2024-04-27 21:53:36 | 2024-04-27 21:53:37 | Rush St &amp; Cedar St                        | Rush St &amp; Cedar St                        | casual | 2024-04-27 | 04 | 27 | 2024 | Saturday | 21 | 0.01666667 |\n",
       "| 2D580593540C11FF | classic_bike  | 2024-04-26 12:32:56 | 2024-04-26 12:32:57 | Dearborn Pkwy &amp; Delaware Pl               | Dearborn Pkwy &amp; Delaware Pl               | member | 2024-04-26 | 04 | 26 | 2024 | Friday   | 12 | 0.01666667 |\n",
       "| 9CF6524E99B4C788 | classic_bike  | 2024-04-27 15:56:37 | 2024-04-27 15:56:38 | DuSable Lake Shore Dr &amp; North Blvd        | DuSable Lake Shore Dr &amp; North Blvd        | member | 2024-04-27 | 04 | 27 | 2024 | Saturday | 15 | 0.01666667 |\n",
       "| 7A9524A8EED2E220 | electric_bike | 2024-04-04 11:58:19 | 2024-04-04 11:58:20 | Kedzie Ave &amp; George St                    | Kedzie Ave &amp; George St                    | casual | 2024-04-04 | 04 | 04 | 2024 | Thursday | 11 | 0.01666667 |\n",
       "| A92132234B8EB87E | electric_bike | 2024-04-25 18:12:14 | 2024-04-25 18:12:15 | Kedzie Ave &amp; George St                    | Kedzie Ave &amp; George St                    | member | 2024-04-25 | 04 | 25 | 2024 | Thursday | 18 | 0.01666667 |\n",
       "| 6BE39BEAA5B3E48F | electric_bike | 2024-04-25 18:11:44 | 2024-04-25 18:11:45 | Kedzie Ave &amp; George St                    | Kedzie Ave &amp; George St                    | member | 2024-04-25 | 04 | 25 | 2024 | Thursday | 18 | 0.01666667 |\n",
       "| 96F565E5B5264578 | electric_bike | 2024-04-22 17:41:19 | 2024-04-22 17:41:20 | Public Rack - Central Ave &amp; Pensacola Ave | Public Rack - Central Ave &amp; Pensacola Ave | casual | 2024-04-22 | 04 | 22 | 2024 | Monday   | 17 | 0.01666667 |\n",
       "| C72D92E1C2E1930E | electric_bike | 2024-04-26 22:00:47 | 2024-04-26 22:00:48 | N Southport Ave &amp; W Newport Ave           | N Southport Ave &amp; W Newport Ave           | casual | 2024-04-26 | 04 | 26 | 2024 | Friday   | 22 | 0.01666667 |\n",
       "| E29DB2AFE4031997 | classic_bike  | 2024-04-29 09:24:14 | 2024-04-29 09:24:15 | Blackstone Ave &amp; 59th St                  | Blackstone Ave &amp; 59th St                  | member | 2024-04-29 | 04 | 29 | 2024 | Monday   |  9 | 0.01666667 |\n",
       "| 5C870366D06BE552 | classic_bike  | 2024-04-16 10:21:15 | 2024-04-16 10:21:16 | Blackstone Ave &amp; 59th St                  | Blackstone Ave &amp; 59th St                  | member | 2024-04-16 | 04 | 16 | 2024 | Tuesday  | 10 | 0.01666667 |\n",
       "| 9F48B3F8EF040C9D | electric_bike | 2024-04-14 01:16:26 | 2024-04-14 01:16:27 | Blackstone Ave &amp; 59th St                  | Blackstone Ave &amp; 59th St                  | member | 2024-04-14 | 04 | 14 | 2024 | Sunday   |  1 | 0.01666667 |\n",
       "| 46F656FC810BE5B1 | electric_bike | 2024-04-04 10:53:31 | 2024-04-04 10:53:32 | Blackstone Ave &amp; 59th St                  | Blackstone Ave &amp; 59th St                  | member | 2024-04-04 | 04 | 04 | 2024 | Thursday | 10 | 0.01666667 |\n",
       "| 7B51BF1D1CFBF1C4 | electric_bike | 2024-04-12 08:31:10 | 2024-04-12 08:31:11 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-12 | 04 | 12 | 2024 | Friday   |  8 | 0.01666667 |\n",
       "| FEA7D41782C8D4C6 | electric_bike | 2024-04-12 12:45:42 | 2024-04-12 12:45:43 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-12 | 04 | 12 | 2024 | Friday   | 12 | 0.01666667 |\n",
       "| 88D65784A0229872 | electric_bike | 2024-04-13 21:26:16 | 2024-04-13 21:26:17 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | casual | 2024-04-13 | 04 | 13 | 2024 | Saturday | 21 | 0.01666667 |\n",
       "| E650EFCEEACA7911 | electric_bike | 2024-04-13 12:55:09 | 2024-04-13 12:55:10 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-13 | 04 | 13 | 2024 | Saturday | 12 | 0.01666667 |\n",
       "| 98E14FD9597CF293 | electric_bike | 2024-04-13 12:56:03 | 2024-04-13 12:56:04 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-13 | 04 | 13 | 2024 | Saturday | 12 | 0.01666667 |\n",
       "| BFFE877D23CF8072 | electric_bike | 2024-04-13 10:57:17 | 2024-04-13 10:57:18 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-13 | 04 | 13 | 2024 | Saturday | 10 | 0.01666667 |\n",
       "| 85403A541C6CA215 | electric_bike | 2024-04-12 22:36:24 | 2024-04-12 22:36:25 | W Washington Blvd &amp; N Peoria St           | W Washington Blvd &amp; N Peoria St           | member | 2024-04-12 | 04 | 12 | 2024 | Friday   | 22 | 0.01666667 |\n",
       "| 96CEC7775EEDF506 | electric_bike | 2024-04-22 17:22:31 | 2024-04-22 17:22:32 | N Carpenter St &amp; W Lake St                | N Carpenter St &amp; W Lake St                | member | 2024-04-22 | 04 | 22 | 2024 | Monday   | 17 | 0.01666667 |\n",
       "| 49838255379679E6 | electric_bike | 2024-04-23 18:40:17 | 2024-04-23 18:40:18 | Clinton St &amp; Washington Blvd              | Clinton St &amp; Washington Blvd              | member | 2024-04-23 | 04 | 23 | 2024 | Tuesday  | 18 | 0.01666667 |\n",
       "| B72ECE692BAF48D5 | classic_bike  | 2024-04-29 18:51:04 | 2024-04-29 18:51:05 | Mies van der Rohe Way &amp; Chicago Ave       | Mies van der Rohe Way &amp; Chicago Ave       | member | 2024-04-29 | 04 | 29 | 2024 | Monday   | 18 | 0.01666667 |\n",
       "| 6647CA791B143A1B | classic_bike  | 2024-04-13 12:59:23 | 2024-04-13 12:59:24 | Ellis Ave &amp; 60th St                       | Ellis Ave &amp; 60th St                       | member | 2024-04-13 | 04 | 13 | 2024 | Saturday | 12 | 0.01666667 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id          rideable_type started_at          ended_at           \n",
       "1       59AD7EE868FC6588 docked_bike   2023-05-30 12:48:08 2023-06-07 23:04:26\n",
       "2       FA287922CA358CE0 docked_bike   2023-06-03 17:52:15 2023-06-11 11:44:31\n",
       "3       47158A16C754A9F4 docked_bike   2023-08-10 22:17:49 2023-08-15 17:09:02\n",
       "4       4031082BC503CC84 docked_bike   2023-08-02 17:28:57 2023-08-06 11:07:57\n",
       "5       3BC5FFFDF7503DAA docked_bike   2023-06-15 13:28:59 2023-06-18 23:12:06\n",
       "6       6786F74C5A6183FB docked_bike   2023-06-18 19:21:22 2023-06-21 10:59:46\n",
       "7       D2273A0F45CDD4CC docked_bike   2023-08-18 09:13:48 2023-08-20 16:14:38\n",
       "8       A795B5420E15A65B docked_bike   2023-05-10 18:42:11 2023-05-13 00:47:58\n",
       "9       280CB8109510E280 docked_bike   2023-07-06 21:34:55 2023-07-08 14:32:46\n",
       "10      81526396CBFBD708 docked_bike   2023-05-06 12:53:46 2023-05-07 18:21:09\n",
       "11      7A5CAAC52FAE9E95 classic_bike  2024-03-09 16:58:39 2024-03-10 18:08:01\n",
       "12      ABA068CBC4FFDA47 docked_bike   2023-07-26 02:23:38 2023-07-27 03:22:27\n",
       "13      7AC23ADF3F785C89 classic_bike  2023-09-29 12:32:03 2023-09-30 13:29:57\n",
       "14      8AFD9583BC85E0DE classic_bike  2024-02-01 17:28:26 2024-02-02 18:26:05\n",
       "15      2503BA4056C4C83B classic_bike  2023-11-11 11:58:41 2023-11-12 12:56:11\n",
       "16      CB93E203A174AC97 classic_bike  2023-05-16 18:06:24 2023-05-17 19:03:53\n",
       "17      C65FD7B15C4C410F classic_bike  2023-09-18 17:57:10 2023-09-19 18:54:33\n",
       "18      D1B2433CCB28F892 classic_bike  2024-01-17 07:44:28 2024-01-18 08:41:47\n",
       "19      3309CF3DBCAD8E84 docked_bike   2023-08-20 19:43:06 2023-08-21 20:40:23\n",
       "20      36628734F611A53C classic_bike  2023-06-03 10:40:32 2023-06-04 11:36:15\n",
       "21      3B059075C4C39AF9 classic_bike  2023-10-01 07:41:37 2023-10-02 08:37:11\n",
       "22      9B86B843855F9B4B classic_bike  2024-02-22 12:23:42 2024-02-23 13:18:26\n",
       "23      969C2DB1BE48310D classic_bike  2023-12-12 08:20:24 2023-12-13 09:14:52\n",
       "24      85BFC687957CCBB8 classic_bike  2024-02-05 09:14:14 2024-02-06 10:08:40\n",
       "25      888DCD04A8601E1E classic_bike  2024-04-09 18:41:23 2024-04-10 19:34:56\n",
       "26      6EA5C4A03EE52C44 classic_bike  2023-07-17 18:57:07 2023-07-18 19:50:27\n",
       "27      596C6E432ADA6786 classic_bike  2023-08-02 16:26:13 2023-08-03 17:19:14\n",
       "28      A6AA6DAD829D4861 classic_bike  2023-09-02 15:34:43 2023-09-03 16:27:42\n",
       "29      9C9DBBD2DC872B6A classic_bike  2023-07-22 09:19:03 2023-07-23 10:11:43\n",
       "30      7629FBAAB4B43EFD docked_bike   2023-05-14 11:54:51 2023-05-15 12:47:25\n",
       "⋮       ⋮                ⋮             ⋮                   ⋮                  \n",
       "4335274 CFA29B1E2B889FCB classic_bike  2024-04-11 17:25:28 2024-04-11 17:25:29\n",
       "4335275 AF33B6A634E46BC2 electric_bike 2024-04-08 14:43:07 2024-04-08 14:43:08\n",
       "4335276 2D741544D284C6D8 classic_bike  2024-04-13 15:35:33 2024-04-13 15:35:34\n",
       "4335277 5C85A4CDF7B0F83E classic_bike  2024-04-27 13:18:55 2024-04-27 13:18:56\n",
       "4335278 6C9A1AE9647676A9 electric_bike 2024-04-30 08:43:06 2024-04-30 08:43:07\n",
       "4335279 14B772E8AB698903 classic_bike  2024-04-28 15:40:01 2024-04-28 15:40:02\n",
       "4335280 6A21DC61926F5589 electric_bike 2024-04-19 18:43:25 2024-04-19 18:43:26\n",
       "4335281 65A10FD5DB42FD72 electric_bike 2024-04-27 21:53:36 2024-04-27 21:53:37\n",
       "4335282 2D580593540C11FF classic_bike  2024-04-26 12:32:56 2024-04-26 12:32:57\n",
       "4335283 9CF6524E99B4C788 classic_bike  2024-04-27 15:56:37 2024-04-27 15:56:38\n",
       "4335284 7A9524A8EED2E220 electric_bike 2024-04-04 11:58:19 2024-04-04 11:58:20\n",
       "4335285 A92132234B8EB87E electric_bike 2024-04-25 18:12:14 2024-04-25 18:12:15\n",
       "4335286 6BE39BEAA5B3E48F electric_bike 2024-04-25 18:11:44 2024-04-25 18:11:45\n",
       "4335287 96F565E5B5264578 electric_bike 2024-04-22 17:41:19 2024-04-22 17:41:20\n",
       "4335288 C72D92E1C2E1930E electric_bike 2024-04-26 22:00:47 2024-04-26 22:00:48\n",
       "4335289 E29DB2AFE4031997 classic_bike  2024-04-29 09:24:14 2024-04-29 09:24:15\n",
       "4335290 5C870366D06BE552 classic_bike  2024-04-16 10:21:15 2024-04-16 10:21:16\n",
       "4335291 9F48B3F8EF040C9D electric_bike 2024-04-14 01:16:26 2024-04-14 01:16:27\n",
       "4335292 46F656FC810BE5B1 electric_bike 2024-04-04 10:53:31 2024-04-04 10:53:32\n",
       "4335293 7B51BF1D1CFBF1C4 electric_bike 2024-04-12 08:31:10 2024-04-12 08:31:11\n",
       "4335294 FEA7D41782C8D4C6 electric_bike 2024-04-12 12:45:42 2024-04-12 12:45:43\n",
       "4335295 88D65784A0229872 electric_bike 2024-04-13 21:26:16 2024-04-13 21:26:17\n",
       "4335296 E650EFCEEACA7911 electric_bike 2024-04-13 12:55:09 2024-04-13 12:55:10\n",
       "4335297 98E14FD9597CF293 electric_bike 2024-04-13 12:56:03 2024-04-13 12:56:04\n",
       "4335298 BFFE877D23CF8072 electric_bike 2024-04-13 10:57:17 2024-04-13 10:57:18\n",
       "4335299 85403A541C6CA215 electric_bike 2024-04-12 22:36:24 2024-04-12 22:36:25\n",
       "4335300 96CEC7775EEDF506 electric_bike 2024-04-22 17:22:31 2024-04-22 17:22:32\n",
       "4335301 49838255379679E6 electric_bike 2024-04-23 18:40:17 2024-04-23 18:40:18\n",
       "4335302 B72ECE692BAF48D5 classic_bike  2024-04-29 18:51:04 2024-04-29 18:51:05\n",
       "4335303 6647CA791B143A1B classic_bike  2024-04-13 12:59:23 2024-04-13 12:59:24\n",
       "        start_station_name                       \n",
       "1       Wells St & Polk St                       \n",
       "2       Fort Dearborn Dr & 31st St               \n",
       "3       Larrabee St & Webster Ave                \n",
       "4       University Ave & 57th St                 \n",
       "5       DuSable Lake Shore Dr & Monroe St        \n",
       "6       Dusable Harbor                           \n",
       "7       2112 W Peterson Ave                      \n",
       "8       Clark St & Schiller St                   \n",
       "9       California Ave & North Ave               \n",
       "10      DuSable Lake Shore Dr & Monroe St        \n",
       "11      Talman Ave & Addison St                  \n",
       "12      Hoyne Ave & 47th St                      \n",
       "13      Halsted St & 63rd St                     \n",
       "14      Benson Ave & Church St                   \n",
       "15      Montrose Harbor                          \n",
       "16      Larrabee St & Webster Ave                \n",
       "17      DuSable Lake Shore Dr & Wellington Ave   \n",
       "18      Ellis Ave & 60th St                      \n",
       "19      Prairie Ave & 43rd St                    \n",
       "20      Sheffield Ave & Wrightwood Ave           \n",
       "21      Damen Ave & Cortland St                  \n",
       "22      Cornell Ave & Hyde Park Blvd             \n",
       "23      Fairfield Ave & Roosevelt Rd             \n",
       "24      Wabash Ave & Roosevelt Rd                \n",
       "25      California Ave & Montrose Ave            \n",
       "26      Ellis Ave & 60th St                      \n",
       "27      Seeley Ave & Roscoe St                   \n",
       "28      Streeter Dr & Grand Ave                  \n",
       "29      Cornell Ave & Hyde Park Blvd             \n",
       "30      Milwaukee Ave & Rockwell St              \n",
       "⋮       ⋮                                        \n",
       "4335274 Larrabee St & Menomonee St               \n",
       "4335275 Streeter Dr & Grand Ave                  \n",
       "4335276 Streeter Dr & Grand Ave                  \n",
       "4335277 Streeter Dr & Grand Ave                  \n",
       "4335278 Francisco Ave & Chicago Ave              \n",
       "4335279 Canal St & Jackson Blvd                  \n",
       "4335280 Western Ave & Gunnison St                \n",
       "4335281 Rush St & Cedar St                       \n",
       "4335282 Dearborn Pkwy & Delaware Pl              \n",
       "4335283 DuSable Lake Shore Dr & North Blvd       \n",
       "4335284 Kedzie Ave & George St                   \n",
       "4335285 Kedzie Ave & George St                   \n",
       "4335286 Kedzie Ave & George St                   \n",
       "4335287 Public Rack - Central Ave & Pensacola Ave\n",
       "4335288 N Southport Ave & W Newport Ave          \n",
       "4335289 Blackstone Ave & 59th St                 \n",
       "4335290 Blackstone Ave & 59th St                 \n",
       "4335291 Blackstone Ave & 59th St                 \n",
       "4335292 Blackstone Ave & 59th St                 \n",
       "4335293 W Washington Blvd & N Peoria St          \n",
       "4335294 W Washington Blvd & N Peoria St          \n",
       "4335295 W Washington Blvd & N Peoria St          \n",
       "4335296 W Washington Blvd & N Peoria St          \n",
       "4335297 W Washington Blvd & N Peoria St          \n",
       "4335298 W Washington Blvd & N Peoria St          \n",
       "4335299 W Washington Blvd & N Peoria St          \n",
       "4335300 N Carpenter St & W Lake St               \n",
       "4335301 Clinton St & Washington Blvd             \n",
       "4335302 Mies van der Rohe Way & Chicago Ave      \n",
       "4335303 Ellis Ave & 60th St                      \n",
       "        end_station_name                          member_casual date      \n",
       "1       Lincoln Ave & Roscoe St*                  casual        2023-05-30\n",
       "2       Fort Dearborn Dr & 31st St*               casual        2023-06-03\n",
       "3       Michigan Ave & Oak St                     casual        2023-08-10\n",
       "4       Museum of Science and Industry            casual        2023-08-02\n",
       "5       Fort Dearborn Dr & 31st St*               casual        2023-06-15\n",
       "6       Wentworth Ave & Cermak Rd*                casual        2023-06-18\n",
       "7       Sheridan Rd & Loyola Ave                  casual        2023-08-18\n",
       "8       Ashland Ave & Wellington Ave              casual        2023-05-10\n",
       "9       Damen Ave & Pierce Ave                    casual        2023-07-06\n",
       "10      Morgan St & Lake St*                      casual        2023-05-06\n",
       "11      Talman Ave & Addison St                   casual        2024-03-09\n",
       "12      Yates Blvd & 75th St                      casual        2023-07-26\n",
       "13      Halsted St & 63rd St                      casual        2023-09-29\n",
       "14      Sheridan Rd & Noyes St (NU)               member        2024-02-01\n",
       "15      Clark St & Leland Ave                     member        2023-11-11\n",
       "16      Western Ave & Roscoe St                   casual        2023-05-16\n",
       "17      DuSable Lake Shore Dr & Wellington Ave    member        2023-09-18\n",
       "18      Harper Ave & 59th St                      member        2024-01-17\n",
       "19      Prairie Ave & 43rd St                     casual        2023-08-20\n",
       "20      Ashland Ave & Wrightwood Ave              casual        2023-06-03\n",
       "21      Damen Ave & Cortland St                   casual        2023-10-01\n",
       "22      Woodlawn Ave & 58th St                    member        2024-02-22\n",
       "23      Wood St & Taylor St (Temp)                member        2023-12-12\n",
       "24      Halsted St & Polk St                      member        2024-02-05\n",
       "25      Manor Ave & Leland Ave                    casual        2024-04-09\n",
       "26      Ellis Ave & 60th St                       casual        2023-07-17\n",
       "27      Lincoln Ave & Roscoe St*                  member        2023-08-02\n",
       "28      Racine Ave & Randolph St                  casual        2023-09-02\n",
       "29      Cornell Ave & Hyde Park Blvd              casual        2023-07-22\n",
       "30      Milwaukee Ave & Rockwell St               casual        2023-05-14\n",
       "⋮       ⋮                                         ⋮             ⋮         \n",
       "4335274 Larrabee St & Menomonee St                member        2024-04-11\n",
       "4335275 Streeter Dr & Grand Ave                   casual        2024-04-08\n",
       "4335276 Streeter Dr & Grand Ave                   casual        2024-04-13\n",
       "4335277 Streeter Dr & Grand Ave                   member        2024-04-27\n",
       "4335278 Francisco Ave & Chicago Ave               member        2024-04-30\n",
       "4335279 Canal St & Jackson Blvd                   casual        2024-04-28\n",
       "4335280 Western Ave & Gunnison St                 casual        2024-04-19\n",
       "4335281 Rush St & Cedar St                        casual        2024-04-27\n",
       "4335282 Dearborn Pkwy & Delaware Pl               member        2024-04-26\n",
       "4335283 DuSable Lake Shore Dr & North Blvd        member        2024-04-27\n",
       "4335284 Kedzie Ave & George St                    casual        2024-04-04\n",
       "4335285 Kedzie Ave & George St                    member        2024-04-25\n",
       "4335286 Kedzie Ave & George St                    member        2024-04-25\n",
       "4335287 Public Rack - Central Ave & Pensacola Ave casual        2024-04-22\n",
       "4335288 N Southport Ave & W Newport Ave           casual        2024-04-26\n",
       "4335289 Blackstone Ave & 59th St                  member        2024-04-29\n",
       "4335290 Blackstone Ave & 59th St                  member        2024-04-16\n",
       "4335291 Blackstone Ave & 59th St                  member        2024-04-14\n",
       "4335292 Blackstone Ave & 59th St                  member        2024-04-04\n",
       "4335293 W Washington Blvd & N Peoria St           member        2024-04-12\n",
       "4335294 W Washington Blvd & N Peoria St           member        2024-04-12\n",
       "4335295 W Washington Blvd & N Peoria St           casual        2024-04-13\n",
       "4335296 W Washington Blvd & N Peoria St           member        2024-04-13\n",
       "4335297 W Washington Blvd & N Peoria St           member        2024-04-13\n",
       "4335298 W Washington Blvd & N Peoria St           member        2024-04-13\n",
       "4335299 W Washington Blvd & N Peoria St           member        2024-04-12\n",
       "4335300 N Carpenter St & W Lake St                member        2024-04-22\n",
       "4335301 Clinton St & Washington Blvd              member        2024-04-23\n",
       "4335302 Mies van der Rohe Way & Chicago Ave       member        2024-04-29\n",
       "4335303 Ellis Ave & 60th St                       member        2024-04-13\n",
       "        month day year day_of_week hour trip_length\n",
       "1       05    30  2023 Tuesday     12   12136.300  \n",
       "2       06    03  2023 Saturday    17   11152.267  \n",
       "3       08    10  2023 Thursday    22    6891.217  \n",
       "4       08    02  2023 Wednesday   17    5379.000  \n",
       "5       06    15  2023 Thursday    13    4903.117  \n",
       "6       06    18  2023 Sunday      19    3818.400  \n",
       "7       08    18  2023 Friday       9    3300.833  \n",
       "8       05    10  2023 Wednesday   18    3245.783  \n",
       "9       07    06  2023 Thursday    21    2457.850  \n",
       "10      05    06  2023 Saturday    12    1767.383  \n",
       "11      03    09  2024 Saturday    16    1509.367  \n",
       "12      07    26  2023 Wednesday    2    1498.817  \n",
       "13      09    29  2023 Friday      12    1497.900  \n",
       "14      02    01  2024 Thursday    17    1497.650  \n",
       "15      11    11  2023 Saturday    11    1497.500  \n",
       "16      05    16  2023 Tuesday     18    1497.483  \n",
       "17      09    18  2023 Monday      17    1497.383  \n",
       "18      01    17  2024 Wednesday    7    1497.317  \n",
       "19      08    20  2023 Sunday      19    1497.283  \n",
       "20      06    03  2023 Saturday    10    1495.717  \n",
       "21      10    01  2023 Sunday       7    1495.567  \n",
       "22      02    22  2024 Thursday    12    1494.733  \n",
       "23      12    12  2023 Tuesday      8    1494.467  \n",
       "24      02    05  2024 Monday       9    1494.433  \n",
       "25      04    09  2024 Tuesday     18    1493.550  \n",
       "26      07    17  2023 Monday      18    1493.333  \n",
       "27      08    02  2023 Wednesday   16    1493.017  \n",
       "28      09    02  2023 Saturday    15    1492.983  \n",
       "29      07    22  2023 Saturday     9    1492.667  \n",
       "30      05    14  2023 Sunday      11    1492.567  \n",
       "⋮       ⋮     ⋮   ⋮    ⋮           ⋮    ⋮          \n",
       "4335274 04    11  2024 Thursday    17   0.01666667 \n",
       "4335275 04    08  2024 Monday      14   0.01666667 \n",
       "4335276 04    13  2024 Saturday    15   0.01666667 \n",
       "4335277 04    27  2024 Saturday    13   0.01666667 \n",
       "4335278 04    30  2024 Tuesday      8   0.01666667 \n",
       "4335279 04    28  2024 Sunday      15   0.01666667 \n",
       "4335280 04    19  2024 Friday      18   0.01666667 \n",
       "4335281 04    27  2024 Saturday    21   0.01666667 \n",
       "4335282 04    26  2024 Friday      12   0.01666667 \n",
       "4335283 04    27  2024 Saturday    15   0.01666667 \n",
       "4335284 04    04  2024 Thursday    11   0.01666667 \n",
       "4335285 04    25  2024 Thursday    18   0.01666667 \n",
       "4335286 04    25  2024 Thursday    18   0.01666667 \n",
       "4335287 04    22  2024 Monday      17   0.01666667 \n",
       "4335288 04    26  2024 Friday      22   0.01666667 \n",
       "4335289 04    29  2024 Monday       9   0.01666667 \n",
       "4335290 04    16  2024 Tuesday     10   0.01666667 \n",
       "4335291 04    14  2024 Sunday       1   0.01666667 \n",
       "4335292 04    04  2024 Thursday    10   0.01666667 \n",
       "4335293 04    12  2024 Friday       8   0.01666667 \n",
       "4335294 04    12  2024 Friday      12   0.01666667 \n",
       "4335295 04    13  2024 Saturday    21   0.01666667 \n",
       "4335296 04    13  2024 Saturday    12   0.01666667 \n",
       "4335297 04    13  2024 Saturday    12   0.01666667 \n",
       "4335298 04    13  2024 Saturday    10   0.01666667 \n",
       "4335299 04    12  2024 Friday      22   0.01666667 \n",
       "4335300 04    22  2024 Monday      17   0.01666667 \n",
       "4335301 04    23  2024 Tuesday     18   0.01666667 \n",
       "4335302 04    29  2024 Monday      18   0.01666667 \n",
       "4335303 04    13  2024 Saturday    12   0.01666667 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "newData <- allDataClean %>%\n",
    "    arrange(desc(trip_length))\n",
    "newData"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "946235fb",
   "metadata": {
    "papermill": {
     "duration": 0.016644,
     "end_time": "2024-07-29T23:03:24.483264",
     "exception": false,
     "start_time": "2024-07-29T23:03:24.466620",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The Average Trip Length in Minutes "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "75c1b283",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:24.520400Z",
     "iopub.status.busy": "2024-07-29T23:03:24.518183Z",
     "iopub.status.idle": "2024-07-29T23:03:32.973355Z",
     "shell.execute_reply": "2024-07-29T23:03:32.971497Z"
    },
    "papermill": {
     "duration": 8.476207,
     "end_time": "2024-07-29T23:03:32.975845",
     "exception": false,
     "start_time": "2024-07-29T23:03:24.499638",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>allDataClean$member_casual</th><th scope=col>allDataClean$trip_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>23.33726</td></tr>\n",
       "\t<tr><td>member</td><td>12.37221</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " allDataClean\\$member\\_casual & allDataClean\\$trip\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 23.33726\\\\\n",
       "\t member & 12.37221\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| allDataClean$member_casual &lt;chr&gt; | allDataClean$trip_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 23.33726 |\n",
       "| member | 12.37221 |\n",
       "\n"
      ],
      "text/plain": [
       "  allDataClean$member_casual allDataClean$trip_length\n",
       "1 casual                     23.33726                \n",
       "2 member                     12.37221                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregateMean <- aggregate(allDataClean$trip_length ~ allDataClean$member_casual, FUN = mean)\n",
    "\n",
    "aggregateMean"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e6f7dfcd",
   "metadata": {
    "papermill": {
     "duration": 0.017193,
     "end_time": "2024-07-29T23:03:33.008609",
     "exception": false,
     "start_time": "2024-07-29T23:03:32.991416",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The Median value of Trip Length in Minutes "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "b970ea45",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:33.046844Z",
     "iopub.status.busy": "2024-07-29T23:03:33.045158Z",
     "iopub.status.idle": "2024-07-29T23:03:37.093721Z",
     "shell.execute_reply": "2024-07-29T23:03:37.091458Z"
    },
    "papermill": {
     "duration": 4.07092,
     "end_time": "2024-07-29T23:03:37.096550",
     "exception": false,
     "start_time": "2024-07-29T23:03:33.025630",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>allDataClean$member_casual</th><th scope=col>allDataClean$trip_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>12.98333</td></tr>\n",
       "\t<tr><td>member</td><td> 8.75000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " allDataClean\\$member\\_casual & allDataClean\\$trip\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 12.98333\\\\\n",
       "\t member &  8.75000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| allDataClean$member_casual &lt;chr&gt; | allDataClean$trip_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 12.98333 |\n",
       "| member |  8.75000 |\n",
       "\n"
      ],
      "text/plain": [
       "  allDataClean$member_casual allDataClean$trip_length\n",
       "1 casual                     12.98333                \n",
       "2 member                      8.75000                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(allDataClean$trip_length ~ allDataClean$member_casual, FUN = median)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d0c14987",
   "metadata": {
    "papermill": {
     "duration": 0.015823,
     "end_time": "2024-07-29T23:03:37.168140",
     "exception": false,
     "start_time": "2024-07-29T23:03:37.152317",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The Longest Trip Duration in Minutes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "6ae5f01c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:37.204699Z",
     "iopub.status.busy": "2024-07-29T23:03:37.202970Z",
     "iopub.status.idle": "2024-07-29T23:03:40.697674Z",
     "shell.execute_reply": "2024-07-29T23:03:40.695811Z"
    },
    "papermill": {
     "duration": 3.515908,
     "end_time": "2024-07-29T23:03:40.700403",
     "exception": false,
     "start_time": "2024-07-29T23:03:37.184495",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>allDataClean$member_casual</th><th scope=col>allDataClean$trip_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>12136.30</td></tr>\n",
       "\t<tr><td>member</td><td> 1497.65</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " allDataClean\\$member\\_casual & allDataClean\\$trip\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 12136.30\\\\\n",
       "\t member &  1497.65\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| allDataClean$member_casual &lt;chr&gt; | allDataClean$trip_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 12136.30 |\n",
       "| member |  1497.65 |\n",
       "\n"
      ],
      "text/plain": [
       "  allDataClean$member_casual allDataClean$trip_length\n",
       "1 casual                     12136.30                \n",
       "2 member                      1497.65                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(allDataClean$trip_length ~ allDataClean$member_casual, FUN = max)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b791949f",
   "metadata": {
    "papermill": {
     "duration": 0.016035,
     "end_time": "2024-07-29T23:03:40.732749",
     "exception": false,
     "start_time": "2024-07-29T23:03:40.716714",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The Shortest Trip Duration in Minutes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "e8d03476",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:40.769018Z",
     "iopub.status.busy": "2024-07-29T23:03:40.767396Z",
     "iopub.status.idle": "2024-07-29T23:03:44.238080Z",
     "shell.execute_reply": "2024-07-29T23:03:44.235887Z"
    },
    "papermill": {
     "duration": 3.492278,
     "end_time": "2024-07-29T23:03:44.241083",
     "exception": false,
     "start_time": "2024-07-29T23:03:40.748805",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>allDataClean$member_casual</th><th scope=col>allDataClean$trip_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>0.01666667</td></tr>\n",
       "\t<tr><td>member</td><td>0.01666667</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " allDataClean\\$member\\_casual & allDataClean\\$trip\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 0.01666667\\\\\n",
       "\t member & 0.01666667\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| allDataClean$member_casual &lt;chr&gt; | allDataClean$trip_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 0.01666667 |\n",
       "| member | 0.01666667 |\n",
       "\n"
      ],
      "text/plain": [
       "  allDataClean$member_casual allDataClean$trip_length\n",
       "1 casual                     0.01666667              \n",
       "2 member                     0.01666667              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(allDataClean$trip_length ~ allDataClean$member_casual, FUN = min)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d157f3dd",
   "metadata": {
    "papermill": {
     "duration": 0.027476,
     "end_time": "2024-07-29T23:03:44.290478",
     "exception": false,
     "start_time": "2024-07-29T23:03:44.263002",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Monthly Distribution of Cyclistic Members and Their Percentages Relative to the Membership"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "7d6e416c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:44.340662Z",
     "iopub.status.busy": "2024-07-29T23:03:44.338938Z",
     "iopub.status.idle": "2024-07-29T23:03:44.872676Z",
     "shell.execute_reply": "2024-07-29T23:03:44.870805Z"
    },
    "papermill": {
     "duration": 0.562144,
     "end_time": "2024-07-29T23:03:44.875303",
     "exception": false,
     "start_time": "2024-07-29T23:03:44.313159",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'year'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 12 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>year</th><th scope=col>month</th><th scope=col>count</th><th scope=col>%</th><th scope=col>casual member #</th><th scope=col>casual_%</th><th scope=col>annual member #</th><th scope=col>member_%</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2023</td><td>05</td><td>463187</td><td>10.684074</td><td>177025</td><td>38.21891</td><td>286162</td><td>61.78109</td></tr>\n",
       "\t<tr><td>2023</td><td>06</td><td>534729</td><td>12.334294</td><td>219788</td><td>41.10269</td><td>314941</td><td>58.89731</td></tr>\n",
       "\t<tr><td>2023</td><td>07</td><td>573941</td><td>13.238775</td><td>245319</td><td>42.74290</td><td>328622</td><td>57.25710</td></tr>\n",
       "\t<tr><td>2023</td><td>08</td><td>584862</td><td>13.490683</td><td>233860</td><td>39.98550</td><td>351002</td><td>60.01450</td></tr>\n",
       "\t<tr><td>2023</td><td>09</td><td>506555</td><td>11.684420</td><td>196938</td><td>38.87791</td><td>309617</td><td>61.12209</td></tr>\n",
       "\t<tr><td>2023</td><td>10</td><td>403702</td><td> 9.311967</td><td>130269</td><td>32.26860</td><td>273433</td><td>67.73140</td></tr>\n",
       "\t<tr><td>2023</td><td>11</td><td>274722</td><td> 6.336858</td><td> 72061</td><td>26.23052</td><td>202661</td><td>73.76948</td></tr>\n",
       "\t<tr><td>2023</td><td>12</td><td>167118</td><td> 3.854817</td><td> 36682</td><td>21.94976</td><td>130436</td><td>78.05024</td></tr>\n",
       "\t<tr><td>2024</td><td>01</td><td>113788</td><td> 2.624684</td><td> 17712</td><td>15.56579</td><td> 96076</td><td>84.43421</td></tr>\n",
       "\t<tr><td>2024</td><td>02</td><td>184721</td><td> 4.260856</td><td> 38168</td><td>20.66251</td><td>146553</td><td>79.33749</td></tr>\n",
       "\t<tr><td>2024</td><td>03</td><td>230237</td><td> 5.310748</td><td> 62801</td><td>27.27668</td><td>167436</td><td>72.72332</td></tr>\n",
       "\t<tr><td>2024</td><td>04</td><td>297741</td><td> 6.867824</td><td> 93927</td><td>31.54655</td><td>203814</td><td>68.45345</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 12 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " year & month & count & \\% & casual member \\# & casual\\_\\% & annual member \\# & member\\_\\%\\\\\n",
       " <chr> & <chr> & <int> & <dbl> & <int> & <dbl> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2023 & 05 & 463187 & 10.684074 & 177025 & 38.21891 & 286162 & 61.78109\\\\\n",
       "\t 2023 & 06 & 534729 & 12.334294 & 219788 & 41.10269 & 314941 & 58.89731\\\\\n",
       "\t 2023 & 07 & 573941 & 13.238775 & 245319 & 42.74290 & 328622 & 57.25710\\\\\n",
       "\t 2023 & 08 & 584862 & 13.490683 & 233860 & 39.98550 & 351002 & 60.01450\\\\\n",
       "\t 2023 & 09 & 506555 & 11.684420 & 196938 & 38.87791 & 309617 & 61.12209\\\\\n",
       "\t 2023 & 10 & 403702 &  9.311967 & 130269 & 32.26860 & 273433 & 67.73140\\\\\n",
       "\t 2023 & 11 & 274722 &  6.336858 &  72061 & 26.23052 & 202661 & 73.76948\\\\\n",
       "\t 2023 & 12 & 167118 &  3.854817 &  36682 & 21.94976 & 130436 & 78.05024\\\\\n",
       "\t 2024 & 01 & 113788 &  2.624684 &  17712 & 15.56579 &  96076 & 84.43421\\\\\n",
       "\t 2024 & 02 & 184721 &  4.260856 &  38168 & 20.66251 & 146553 & 79.33749\\\\\n",
       "\t 2024 & 03 & 230237 &  5.310748 &  62801 & 27.27668 & 167436 & 72.72332\\\\\n",
       "\t 2024 & 04 & 297741 &  6.867824 &  93927 & 31.54655 & 203814 & 68.45345\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 12 × 8\n",
       "\n",
       "| year &lt;chr&gt; | month &lt;chr&gt; | count &lt;int&gt; | % &lt;dbl&gt; | casual member # &lt;int&gt; | casual_% &lt;dbl&gt; | annual member # &lt;int&gt; | member_% &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 2023 | 05 | 463187 | 10.684074 | 177025 | 38.21891 | 286162 | 61.78109 |\n",
       "| 2023 | 06 | 534729 | 12.334294 | 219788 | 41.10269 | 314941 | 58.89731 |\n",
       "| 2023 | 07 | 573941 | 13.238775 | 245319 | 42.74290 | 328622 | 57.25710 |\n",
       "| 2023 | 08 | 584862 | 13.490683 | 233860 | 39.98550 | 351002 | 60.01450 |\n",
       "| 2023 | 09 | 506555 | 11.684420 | 196938 | 38.87791 | 309617 | 61.12209 |\n",
       "| 2023 | 10 | 403702 |  9.311967 | 130269 | 32.26860 | 273433 | 67.73140 |\n",
       "| 2023 | 11 | 274722 |  6.336858 |  72061 | 26.23052 | 202661 | 73.76948 |\n",
       "| 2023 | 12 | 167118 |  3.854817 |  36682 | 21.94976 | 130436 | 78.05024 |\n",
       "| 2024 | 01 | 113788 |  2.624684 |  17712 | 15.56579 |  96076 | 84.43421 |\n",
       "| 2024 | 02 | 184721 |  4.260856 |  38168 | 20.66251 | 146553 | 79.33749 |\n",
       "| 2024 | 03 | 230237 |  5.310748 |  62801 | 27.27668 | 167436 | 72.72332 |\n",
       "| 2024 | 04 | 297741 |  6.867824 |  93927 | 31.54655 | 203814 | 68.45345 |\n",
       "\n"
      ],
      "text/plain": [
       "   year month count  %         casual member # casual_% annual member #\n",
       "1  2023 05    463187 10.684074 177025          38.21891 286162         \n",
       "2  2023 06    534729 12.334294 219788          41.10269 314941         \n",
       "3  2023 07    573941 13.238775 245319          42.74290 328622         \n",
       "4  2023 08    584862 13.490683 233860          39.98550 351002         \n",
       "5  2023 09    506555 11.684420 196938          38.87791 309617         \n",
       "6  2023 10    403702  9.311967 130269          32.26860 273433         \n",
       "7  2023 11    274722  6.336858  72061          26.23052 202661         \n",
       "8  2023 12    167118  3.854817  36682          21.94976 130436         \n",
       "9  2024 01    113788  2.624684  17712          15.56579  96076         \n",
       "10 2024 02    184721  4.260856  38168          20.66251 146553         \n",
       "11 2024 03    230237  5.310748  62801          27.27668 167436         \n",
       "12 2024 04    297741  6.867824  93927          31.54655 203814         \n",
       "   member_%\n",
       "1  61.78109\n",
       "2  58.89731\n",
       "3  57.25710\n",
       "4  60.01450\n",
       "5  61.12209\n",
       "6  67.73140\n",
       "7  73.76948\n",
       "8  78.05024\n",
       "9  84.43421\n",
       "10 79.33749\n",
       "11 72.72332\n",
       "12 68.45345"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Month\n",
    "allDataClean %>%\n",
    "    group_by(year, month) %>%\n",
    "    summarise(count = length(ride_id),\n",
    "             '%' = (length(ride_id) / nrow(allDataClean)) * 100,\n",
    "              'casual member #' = sum(member_casual == \"casual\"),\n",
    "             'casual_%' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "             'annual member #' = sum(member_casual == \"member\"),\n",
    "             'member_%' = (sum(member_casual == \"member\") / length(ride_id)) * 100)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8f7e982d",
   "metadata": {
    "papermill": {
     "duration": 0.017305,
     "end_time": "2024-07-29T23:03:44.909308",
     "exception": false,
     "start_time": "2024-07-29T23:03:44.892003",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Weekly Distribution of Cyclistic Members and Their Percentages Relative to the Membership"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "27b694c6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:44.946663Z",
     "iopub.status.busy": "2024-07-29T23:03:44.944856Z",
     "iopub.status.idle": "2024-07-29T23:03:50.317533Z",
     "shell.execute_reply": "2024-07-29T23:03:50.315565Z"
    },
    "papermill": {
     "duration": 5.394458,
     "end_time": "2024-07-29T23:03:50.320462",
     "exception": false,
     "start_time": "2024-07-29T23:03:44.926004",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>day_of_week</th><th scope=col>rides</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>259910</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>182257</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>182268</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>175725</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>190724</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>219819</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>313847</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>307287</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>402980</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>453910</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>448966</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>452510</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>391965</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>353135</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & day\\_of\\_week & rides\\\\\n",
       " <chr> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 259910\\\\\n",
       "\t casual & Mon & 182257\\\\\n",
       "\t casual & Tue & 182268\\\\\n",
       "\t casual & Wed & 175725\\\\\n",
       "\t casual & Thu & 190724\\\\\n",
       "\t casual & Fri & 219819\\\\\n",
       "\t casual & Sat & 313847\\\\\n",
       "\t member & Sun & 307287\\\\\n",
       "\t member & Mon & 402980\\\\\n",
       "\t member & Tue & 453910\\\\\n",
       "\t member & Wed & 448966\\\\\n",
       "\t member & Thu & 452510\\\\\n",
       "\t member & Fri & 391965\\\\\n",
       "\t member & Sat & 353135\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | day_of_week &lt;ord&gt; | rides &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sun | 259910 |\n",
       "| casual | Mon | 182257 |\n",
       "| casual | Tue | 182268 |\n",
       "| casual | Wed | 175725 |\n",
       "| casual | Thu | 190724 |\n",
       "| casual | Fri | 219819 |\n",
       "| casual | Sat | 313847 |\n",
       "| member | Sun | 307287 |\n",
       "| member | Mon | 402980 |\n",
       "| member | Tue | 453910 |\n",
       "| member | Wed | 448966 |\n",
       "| member | Thu | 452510 |\n",
       "| member | Fri | 391965 |\n",
       "| member | Sat | 353135 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual day_of_week rides \n",
       "1  casual        Sun         259910\n",
       "2  casual        Mon         182257\n",
       "3  casual        Tue         182268\n",
       "4  casual        Wed         175725\n",
       "5  casual        Thu         190724\n",
       "6  casual        Fri         219819\n",
       "7  casual        Sat         313847\n",
       "8  member        Sun         307287\n",
       "9  member        Mon         402980\n",
       "10 member        Tue         453910\n",
       "11 member        Wed         448966\n",
       "12 member        Thu         452510\n",
       "13 member        Fri         391965\n",
       "14 member        Sat         353135"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>day_of_week</th><th scope=col>count</th><th scope=col>% of week</th><th scope=col>casual member #</th><th scope=col>casual_%</th><th scope=col>annual member #</th><th scope=col>member_%</th></tr>\n",
       "\t<tr><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Sunday   </td><td>567197</td><td>13.08321</td><td>259910</td><td>45.82359</td><td>307287</td><td>54.17641</td></tr>\n",
       "\t<tr><td>Monday   </td><td>585237</td><td>13.49933</td><td>182257</td><td>31.14243</td><td>402980</td><td>68.85757</td></tr>\n",
       "\t<tr><td>Tuesday  </td><td>636178</td><td>14.67436</td><td>182268</td><td>28.65047</td><td>453910</td><td>71.34953</td></tr>\n",
       "\t<tr><td>Wednesday</td><td>624691</td><td>14.40940</td><td>175725</td><td>28.12991</td><td>448966</td><td>71.87009</td></tr>\n",
       "\t<tr><td>Thursday </td><td>643234</td><td>14.83712</td><td>190724</td><td>29.65080</td><td>452510</td><td>70.34920</td></tr>\n",
       "\t<tr><td>Friday   </td><td>611784</td><td>14.11168</td><td>219819</td><td>35.93082</td><td>391965</td><td>64.06918</td></tr>\n",
       "\t<tr><td>Saturday </td><td>666982</td><td>15.38490</td><td>313847</td><td>47.05479</td><td>353135</td><td>52.94521</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " day\\_of\\_week & count & \\% of week & casual member \\# & casual\\_\\% & annual member \\# & member\\_\\%\\\\\n",
       " <ord> & <int> & <dbl> & <int> & <dbl> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Sunday    & 567197 & 13.08321 & 259910 & 45.82359 & 307287 & 54.17641\\\\\n",
       "\t Monday    & 585237 & 13.49933 & 182257 & 31.14243 & 402980 & 68.85757\\\\\n",
       "\t Tuesday   & 636178 & 14.67436 & 182268 & 28.65047 & 453910 & 71.34953\\\\\n",
       "\t Wednesday & 624691 & 14.40940 & 175725 & 28.12991 & 448966 & 71.87009\\\\\n",
       "\t Thursday  & 643234 & 14.83712 & 190724 & 29.65080 & 452510 & 70.34920\\\\\n",
       "\t Friday    & 611784 & 14.11168 & 219819 & 35.93082 & 391965 & 64.06918\\\\\n",
       "\t Saturday  & 666982 & 15.38490 & 313847 & 47.05479 & 353135 & 52.94521\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 7\n",
       "\n",
       "| day_of_week &lt;ord&gt; | count &lt;int&gt; | % of week &lt;dbl&gt; | casual member # &lt;int&gt; | casual_% &lt;dbl&gt; | annual member # &lt;int&gt; | member_% &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| Sunday    | 567197 | 13.08321 | 259910 | 45.82359 | 307287 | 54.17641 |\n",
       "| Monday    | 585237 | 13.49933 | 182257 | 31.14243 | 402980 | 68.85757 |\n",
       "| Tuesday   | 636178 | 14.67436 | 182268 | 28.65047 | 453910 | 71.34953 |\n",
       "| Wednesday | 624691 | 14.40940 | 175725 | 28.12991 | 448966 | 71.87009 |\n",
       "| Thursday  | 643234 | 14.83712 | 190724 | 29.65080 | 452510 | 70.34920 |\n",
       "| Friday    | 611784 | 14.11168 | 219819 | 35.93082 | 391965 | 64.06918 |\n",
       "| Saturday  | 666982 | 15.38490 | 313847 | 47.05479 | 353135 | 52.94521 |\n",
       "\n"
      ],
      "text/plain": [
       "  day_of_week count  % of week casual member # casual_% annual member #\n",
       "1 Sunday      567197 13.08321  259910          45.82359 307287         \n",
       "2 Monday      585237 13.49933  182257          31.14243 402980         \n",
       "3 Tuesday     636178 14.67436  182268          28.65047 453910         \n",
       "4 Wednesday   624691 14.40940  175725          28.12991 448966         \n",
       "5 Thursday    643234 14.83712  190724          29.65080 452510         \n",
       "6 Friday      611784 14.11168  219819          35.93082 391965         \n",
       "7 Saturday    666982 15.38490  313847          47.05479 353135         \n",
       "  member_%\n",
       "1 54.17641\n",
       "2 68.85757\n",
       "3 71.34953\n",
       "4 71.87009\n",
       "5 70.34920\n",
       "6 64.06918\n",
       "7 52.94521"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Checking to see which week day is the most popular in each membership\n",
    "allDataClean$day_of_week <- ordered(allDataClean$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\")) #make sure that the week days are in the right order (when grouping)\n",
    "allDataClean %>%\n",
    "    mutate(day_of_week = wday(started_at, label = TRUE)) %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(rides = n())\n",
    "\n",
    "\n",
    "allDataClean %>%\n",
    "    group_by(day_of_week) %>%\n",
    "    summarise(count = length(ride_id),\n",
    "             '% of week' = (length(ride_id) / nrow(allDataClean)) * 100,\n",
    "              'casual member #' = sum(member_casual == \"casual\"),\n",
    "             'casual_%' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "             'annual member #' = sum(member_casual == \"member\"),\n",
    "             'member_%' = (sum(member_casual == \"member\") / length(ride_id)) * 100)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9287db8b",
   "metadata": {
    "papermill": {
     "duration": 0.017209,
     "end_time": "2024-07-29T23:03:50.355815",
     "exception": false,
     "start_time": "2024-07-29T23:03:50.338606",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Hourly Distribution Throughout the Day of Cyclistic Members and Their Percentages Relative to the Membership"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "0f32445a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:50.396519Z",
     "iopub.status.busy": "2024-07-29T23:03:50.394771Z",
     "iopub.status.idle": "2024-07-29T23:03:52.326962Z",
     "shell.execute_reply": "2024-07-29T23:03:52.324945Z"
    },
    "papermill": {
     "duration": 1.955033,
     "end_time": "2024-07-29T23:03:52.329665",
     "exception": false,
     "start_time": "2024-07-29T23:03:50.374632",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 24 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>hour</th><th scope=col>count</th><th scope=col>%</th><th scope=col>casual member #</th><th scope=col>casual_%</th><th scope=col>annual member #</th><th scope=col>member_%</th></tr>\n",
       "\t<tr><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 0</td><td> 47331</td><td> 1.0917576</td><td> 24206</td><td>51.14196</td><td> 23125</td><td>48.85804</td></tr>\n",
       "\t<tr><td> 1</td><td> 28528</td><td> 0.6580394</td><td> 15460</td><td>54.19237</td><td> 13068</td><td>45.80763</td></tr>\n",
       "\t<tr><td> 2</td><td> 15855</td><td> 0.3657184</td><td>  8834</td><td>55.71744</td><td>  7021</td><td>44.28256</td></tr>\n",
       "\t<tr><td> 3</td><td>  9218</td><td> 0.2126264</td><td>  4636</td><td>50.29291</td><td>  4582</td><td>49.70709</td></tr>\n",
       "\t<tr><td> 4</td><td>  9484</td><td> 0.2187621</td><td>  3447</td><td>36.34542</td><td>  6037</td><td>63.65458</td></tr>\n",
       "\t<tr><td> 5</td><td> 34891</td><td> 0.8048111</td><td>  8054</td><td>23.08332</td><td> 26837</td><td>76.91668</td></tr>\n",
       "\t<tr><td> 6</td><td>106120</td><td> 2.4478105</td><td> 21164</td><td>19.94346</td><td> 84956</td><td>80.05654</td></tr>\n",
       "\t<tr><td> 7</td><td>197752</td><td> 4.5614343</td><td> 38146</td><td>19.28982</td><td>159606</td><td>80.71018</td></tr>\n",
       "\t<tr><td> 8</td><td>249573</td><td> 5.7567603</td><td> 52549</td><td>21.05556</td><td>197024</td><td>78.94444</td></tr>\n",
       "\t<tr><td> 9</td><td>181476</td><td> 4.1860050</td><td> 53003</td><td>29.20662</td><td>128473</td><td>70.79338</td></tr>\n",
       "\t<tr><td>10</td><td>182187</td><td> 4.2024052</td><td> 67735</td><td>37.17883</td><td>114452</td><td>62.82117</td></tr>\n",
       "\t<tr><td>11</td><td>221242</td><td> 5.1032650</td><td> 85917</td><td>38.83395</td><td>135325</td><td>61.16605</td></tr>\n",
       "\t<tr><td>12</td><td>256602</td><td> 5.9188943</td><td>101948</td><td>39.73001</td><td>154654</td><td>60.26999</td></tr>\n",
       "\t<tr><td>13</td><td>259007</td><td> 5.9743690</td><td>105827</td><td>40.85874</td><td>153180</td><td>59.14126</td></tr>\n",
       "\t<tr><td>14</td><td>264234</td><td> 6.0949373</td><td>109373</td><td>41.39248</td><td>154861</td><td>58.60752</td></tr>\n",
       "\t<tr><td>15</td><td>311508</td><td> 7.1853801</td><td>120596</td><td>38.71361</td><td>190912</td><td>61.28639</td></tr>\n",
       "\t<tr><td>16</td><td>400304</td><td> 9.2335876</td><td>138872</td><td>34.69163</td><td>261432</td><td>65.30837</td></tr>\n",
       "\t<tr><td>17</td><td>454569</td><td>10.4852879</td><td>149287</td><td>32.84144</td><td>305282</td><td>67.15856</td></tr>\n",
       "\t<tr><td>18</td><td>358202</td><td> 8.2624444</td><td>124707</td><td>34.81471</td><td>233495</td><td>65.18529</td></tr>\n",
       "\t<tr><td>19</td><td>252502</td><td> 5.8243219</td><td> 90976</td><td>36.02981</td><td>161526</td><td>63.97019</td></tr>\n",
       "\t<tr><td>20</td><td>177041</td><td> 4.0837053</td><td> 65121</td><td>36.78301</td><td>111920</td><td>63.21699</td></tr>\n",
       "\t<tr><td>21</td><td>137952</td><td> 3.1820613</td><td> 53315</td><td>38.64750</td><td> 84637</td><td>61.35250</td></tr>\n",
       "\t<tr><td>22</td><td>107978</td><td> 2.4906679</td><td> 47243</td><td>43.75243</td><td> 60735</td><td>56.24757</td></tr>\n",
       "\t<tr><td>23</td><td> 71747</td><td> 1.6549478</td><td> 34134</td><td>47.57551</td><td> 37613</td><td>52.42449</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 24 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " hour & count & \\% & casual member \\# & casual\\_\\% & annual member \\# & member\\_\\%\\\\\n",
       " <int> & <int> & <dbl> & <int> & <dbl> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  0 &  47331 &  1.0917576 &  24206 & 51.14196 &  23125 & 48.85804\\\\\n",
       "\t  1 &  28528 &  0.6580394 &  15460 & 54.19237 &  13068 & 45.80763\\\\\n",
       "\t  2 &  15855 &  0.3657184 &   8834 & 55.71744 &   7021 & 44.28256\\\\\n",
       "\t  3 &   9218 &  0.2126264 &   4636 & 50.29291 &   4582 & 49.70709\\\\\n",
       "\t  4 &   9484 &  0.2187621 &   3447 & 36.34542 &   6037 & 63.65458\\\\\n",
       "\t  5 &  34891 &  0.8048111 &   8054 & 23.08332 &  26837 & 76.91668\\\\\n",
       "\t  6 & 106120 &  2.4478105 &  21164 & 19.94346 &  84956 & 80.05654\\\\\n",
       "\t  7 & 197752 &  4.5614343 &  38146 & 19.28982 & 159606 & 80.71018\\\\\n",
       "\t  8 & 249573 &  5.7567603 &  52549 & 21.05556 & 197024 & 78.94444\\\\\n",
       "\t  9 & 181476 &  4.1860050 &  53003 & 29.20662 & 128473 & 70.79338\\\\\n",
       "\t 10 & 182187 &  4.2024052 &  67735 & 37.17883 & 114452 & 62.82117\\\\\n",
       "\t 11 & 221242 &  5.1032650 &  85917 & 38.83395 & 135325 & 61.16605\\\\\n",
       "\t 12 & 256602 &  5.9188943 & 101948 & 39.73001 & 154654 & 60.26999\\\\\n",
       "\t 13 & 259007 &  5.9743690 & 105827 & 40.85874 & 153180 & 59.14126\\\\\n",
       "\t 14 & 264234 &  6.0949373 & 109373 & 41.39248 & 154861 & 58.60752\\\\\n",
       "\t 15 & 311508 &  7.1853801 & 120596 & 38.71361 & 190912 & 61.28639\\\\\n",
       "\t 16 & 400304 &  9.2335876 & 138872 & 34.69163 & 261432 & 65.30837\\\\\n",
       "\t 17 & 454569 & 10.4852879 & 149287 & 32.84144 & 305282 & 67.15856\\\\\n",
       "\t 18 & 358202 &  8.2624444 & 124707 & 34.81471 & 233495 & 65.18529\\\\\n",
       "\t 19 & 252502 &  5.8243219 &  90976 & 36.02981 & 161526 & 63.97019\\\\\n",
       "\t 20 & 177041 &  4.0837053 &  65121 & 36.78301 & 111920 & 63.21699\\\\\n",
       "\t 21 & 137952 &  3.1820613 &  53315 & 38.64750 &  84637 & 61.35250\\\\\n",
       "\t 22 & 107978 &  2.4906679 &  47243 & 43.75243 &  60735 & 56.24757\\\\\n",
       "\t 23 &  71747 &  1.6549478 &  34134 & 47.57551 &  37613 & 52.42449\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 24 × 7\n",
       "\n",
       "| hour &lt;int&gt; | count &lt;int&gt; | % &lt;dbl&gt; | casual member # &lt;int&gt; | casual_% &lt;dbl&gt; | annual member # &lt;int&gt; | member_% &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "|  0 |  47331 |  1.0917576 |  24206 | 51.14196 |  23125 | 48.85804 |\n",
       "|  1 |  28528 |  0.6580394 |  15460 | 54.19237 |  13068 | 45.80763 |\n",
       "|  2 |  15855 |  0.3657184 |   8834 | 55.71744 |   7021 | 44.28256 |\n",
       "|  3 |   9218 |  0.2126264 |   4636 | 50.29291 |   4582 | 49.70709 |\n",
       "|  4 |   9484 |  0.2187621 |   3447 | 36.34542 |   6037 | 63.65458 |\n",
       "|  5 |  34891 |  0.8048111 |   8054 | 23.08332 |  26837 | 76.91668 |\n",
       "|  6 | 106120 |  2.4478105 |  21164 | 19.94346 |  84956 | 80.05654 |\n",
       "|  7 | 197752 |  4.5614343 |  38146 | 19.28982 | 159606 | 80.71018 |\n",
       "|  8 | 249573 |  5.7567603 |  52549 | 21.05556 | 197024 | 78.94444 |\n",
       "|  9 | 181476 |  4.1860050 |  53003 | 29.20662 | 128473 | 70.79338 |\n",
       "| 10 | 182187 |  4.2024052 |  67735 | 37.17883 | 114452 | 62.82117 |\n",
       "| 11 | 221242 |  5.1032650 |  85917 | 38.83395 | 135325 | 61.16605 |\n",
       "| 12 | 256602 |  5.9188943 | 101948 | 39.73001 | 154654 | 60.26999 |\n",
       "| 13 | 259007 |  5.9743690 | 105827 | 40.85874 | 153180 | 59.14126 |\n",
       "| 14 | 264234 |  6.0949373 | 109373 | 41.39248 | 154861 | 58.60752 |\n",
       "| 15 | 311508 |  7.1853801 | 120596 | 38.71361 | 190912 | 61.28639 |\n",
       "| 16 | 400304 |  9.2335876 | 138872 | 34.69163 | 261432 | 65.30837 |\n",
       "| 17 | 454569 | 10.4852879 | 149287 | 32.84144 | 305282 | 67.15856 |\n",
       "| 18 | 358202 |  8.2624444 | 124707 | 34.81471 | 233495 | 65.18529 |\n",
       "| 19 | 252502 |  5.8243219 |  90976 | 36.02981 | 161526 | 63.97019 |\n",
       "| 20 | 177041 |  4.0837053 |  65121 | 36.78301 | 111920 | 63.21699 |\n",
       "| 21 | 137952 |  3.1820613 |  53315 | 38.64750 |  84637 | 61.35250 |\n",
       "| 22 | 107978 |  2.4906679 |  47243 | 43.75243 |  60735 | 56.24757 |\n",
       "| 23 |  71747 |  1.6549478 |  34134 | 47.57551 |  37613 | 52.42449 |\n",
       "\n"
      ],
      "text/plain": [
       "   hour count  %          casual member # casual_% annual member # member_%\n",
       "1   0    47331  1.0917576  24206          51.14196  23125          48.85804\n",
       "2   1    28528  0.6580394  15460          54.19237  13068          45.80763\n",
       "3   2    15855  0.3657184   8834          55.71744   7021          44.28256\n",
       "4   3     9218  0.2126264   4636          50.29291   4582          49.70709\n",
       "5   4     9484  0.2187621   3447          36.34542   6037          63.65458\n",
       "6   5    34891  0.8048111   8054          23.08332  26837          76.91668\n",
       "7   6   106120  2.4478105  21164          19.94346  84956          80.05654\n",
       "8   7   197752  4.5614343  38146          19.28982 159606          80.71018\n",
       "9   8   249573  5.7567603  52549          21.05556 197024          78.94444\n",
       "10  9   181476  4.1860050  53003          29.20662 128473          70.79338\n",
       "11 10   182187  4.2024052  67735          37.17883 114452          62.82117\n",
       "12 11   221242  5.1032650  85917          38.83395 135325          61.16605\n",
       "13 12   256602  5.9188943 101948          39.73001 154654          60.26999\n",
       "14 13   259007  5.9743690 105827          40.85874 153180          59.14126\n",
       "15 14   264234  6.0949373 109373          41.39248 154861          58.60752\n",
       "16 15   311508  7.1853801 120596          38.71361 190912          61.28639\n",
       "17 16   400304  9.2335876 138872          34.69163 261432          65.30837\n",
       "18 17   454569 10.4852879 149287          32.84144 305282          67.15856\n",
       "19 18   358202  8.2624444 124707          34.81471 233495          65.18529\n",
       "20 19   252502  5.8243219  90976          36.02981 161526          63.97019\n",
       "21 20   177041  4.0837053  65121          36.78301 111920          63.21699\n",
       "22 21   137952  3.1820613  53315          38.64750  84637          61.35250\n",
       "23 22   107978  2.4906679  47243          43.75243  60735          56.24757\n",
       "24 23    71747  1.6549478  34134          47.57551  37613          52.42449"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Hour\n",
    "allDataClean %>% \n",
    "    group_by(hour) %>%\n",
    "    summarise(count = length(ride_id),\n",
    "             '%' = (length(ride_id) / nrow(allDataClean)) * 100,\n",
    "              'casual member #' = sum(member_casual == \"casual\"),\n",
    "             'casual_%' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "             'annual member #' = sum(member_casual == \"member\"),\n",
    "             'member_%' = (sum(member_casual == \"member\") / length(ride_id)) * 100)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0413e0b0",
   "metadata": {
    "papermill": {
     "duration": 0.017503,
     "end_time": "2024-07-29T23:03:52.364794",
     "exception": false,
     "start_time": "2024-07-29T23:03:52.347291",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 5. Share \n",
    "Now that the analysis is over, visualizations will be created with the insight that was gained. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94bb1bac",
   "metadata": {
    "papermill": {
     "duration": 0.017347,
     "end_time": "2024-07-29T23:03:52.399670",
     "exception": false,
     "start_time": "2024-07-29T23:03:52.382323",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Percentage of Casual Members vs. Annual Members\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "7936b222",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:03:52.440549Z",
     "iopub.status.busy": "2024-07-29T23:03:52.438829Z",
     "iopub.status.idle": "2024-07-29T23:09:32.467427Z",
     "shell.execute_reply": "2024-07-29T23:09:32.464469Z"
    },
    "papermill": {
     "duration": 340.082836,
     "end_time": "2024-07-29T23:09:32.501024",
     "exception": false,
     "start_time": "2024-07-29T23:03:52.418188",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mUse of `allDataClean$member_casual` is discouraged.\n",
      "\u001b[36mℹ\u001b[39m Use `member_casual` instead.”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mUse of `allDataClean$member_casual` is discouraged.\n",
      "\u001b[36mℹ\u001b[39m Use `member_casual` instead.”\n"
     ]
    },
    {
     "data": {
      "image/png": "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\n3/iXis4Y/3NUyA6zqv7xaXXl08SdPPzjoR0dCiF8y3V4ZmXXoq38XLff/UmIHlqGc/GsmN2o\n9QDWoyv7hRC1G+VI2Fi3z9t1hRBCuPv4hZzcuWrnoXOXr/514/qFM7/fCot29Xm6mt6U78cZ\n3Vq/93X1At8WKFvjpZo16zVq3rFDMz9t8ch256mlNdhdXf3qoJVHGw+aO3t4xwrF8gghfIvN\nnN7/wbilg9tWarz97ZJ2jg8AACSgcxFClHv3y/gDcvFM3nZeop80FhkUoehMGodTdB7ax7JE\nW4QQLkryUWzjyMYd5+zPU6lRm4Y1W9d+eeTUCrf6Nx2c4LRlvXdX3es5bsuW7w8cOnxk98pv\nls0Z8U7NLWf3N01wQDGeanlmYkSKnaeK1mD3wcjdfqXG7lk47L8t3UuOXXIk5mjAx5OnibdX\n2zk+AADI+lz9WuqV4XFhJZo3fym+MS7y4sbvfs9ZIfEj5jUKObtFiKbxL83R17c9iPKq1dgR\nw3kVryzE7iMngkUBr/jGfWPe/uqB79I5bV+fsz9fyyV/fd8/ftGKBNvGPr70y7kw/wpVOvcf\n1bn/KCHEhR3TSrecOOz9X89/Vstae8Kx7p4Kif85Jvxn252nltZgtyE4stSILknb23cvPGXs\ntjQUgNTJNmuqs0uQULQQQohsTq5CTuGjJzq7BAAZweBadHJpvylf9dg75ffGOZ9Gq28Hteux\n8sqqO4/t6/Px7cXv/TByeqvCQgghzN+MavfYbOk2s7YjhvMqMK6C55zjQ0cFtVlfyFUvhIh5\neKz7vGXRxT+Ji7hoVlW/ilXiV4745+int8KF8emBtyd3P6tZc16lSSd+mVzN2lKwajUhRNyT\nOCGEu14Xdf+H4NhZAUadECLqwc8D992K7yrFzlNLa7DLb9KHX3mUtD303EO9KfFRUAAA8KIZ\nvn3xsuJdWxQp275z2yrF/M7uW/vV7svlen7VLbudR+xMga4ftS19tmvvakWy/bp/3eaD1/M1\nn7aoVg5HDKfovbd+PbBY+3nlitbv9WbznMawzcuW/GP2WLShp3ugaxP/gftntR5sHFUlr/u1\ncz9/seS7IjldY27+Mn/1+j5vdPAuOKVJ4Od7p9Vrea1XzTKFLWHXt3zxpd7oP3l6JSFE227F\np3xwskKj7u++2Sj2zsWVs+fdDXARf8dZx3UP7Gy789S+Ea0XFb5XI/ufX3ePv9ueVcTtfb3W\n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\nIgh2AAAAivh/LJSJtJM3GfkAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#add to visualization\n",
    "#Casual Vs. Annual Member\n",
    "CasualxMember <- ggplot(allDataClean, aes(member_casual, fill=member_casual)) + \n",
    "    geom_bar() + \n",
    "    geom_text(aes(label=ifelse(member_casual==\"casual\",(length(which(allDataClean$member_casual == \"casual\")) / nrow(allDataClean)) * 100, (length(which(allDataClean$member_casual == \"member\")) / nrow(allDataClean)) * 100 )) ,vjust = 1, y=0) + \n",
    "    labs(x = \"Membership Type\", y = \"Number of Members\", title= \"Casual vs. Members distribution\")\n",
    "              \n",
    "CasualxMember + scale_y_continuous(labels = label_comma())\n",
    "\n",
    "#add pie chart?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "89c2cd18",
   "metadata": {
    "papermill": {
     "duration": 0.018021,
     "end_time": "2024-07-29T23:09:32.537392",
     "exception": false,
     "start_time": "2024-07-29T23:09:32.519371",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As we can see in this bar graph, there are more annual members enrolled than casual members throughout the last year. Out of all the riders about 65% are annual members and 35% casual ones, making annual memberships 30% more popular than casual ones. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "32f66568",
   "metadata": {
    "papermill": {
     "duration": 0.018471,
     "end_time": "2024-07-29T23:09:32.574209",
     "exception": false,
     "start_time": "2024-07-29T23:09:32.555738",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Monthly Distribution of Cyclistic Members Relative to Membership"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "8301e130",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:09:32.614804Z",
     "iopub.status.busy": "2024-07-29T23:09:32.612608Z",
     "iopub.status.idle": "2024-07-29T23:09:41.671621Z",
     "shell.execute_reply": "2024-07-29T23:09:41.669651Z"
    },
    "papermill": {
     "duration": 9.081903,
     "end_time": "2024-07-29T23:09:41.674118",
     "exception": false,
     "start_time": "2024-07-29T23:09:32.592215",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeYDM9R/H8fd3zt3Znd2xs25yLLlzRMmRCh1yVGxSuSolXXIXIUqSKyI6kFLk\nSBSVFHL9REmOUCiRe9mdtbOzc/z+GG3rWrPMsfvxfPw185nP9/N5z4fMq8/M9/vVfD6fAAAA\noODTRboAAAAABAfBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAU\nUfCC3YmdD2mapmlaQqURF+3kdVaOMfm7fX8qM9Ql7f7gZk3Tbv5gd+7dtrxeT9O0pp/vu5K5\nqv37vnLS6QxWW+HajVu88t433rP7b3qhlqZpd608mPuw45IKaZq2JMV5JbUBAIDIMkS6gMt3\n8vdh2073q2a5wFtI+f3lnaezQjSvz5u+dt1mg/maG+uWDtEUl1S0XJJVr2U/9bpdxw8e2Lx6\n6ebVSz/5bvK2j5+MVGEAACCCCt6OnZ+mM/i8mX2/+fuCr/40eK6IGHXaBV+9Qu6MXY0aNbq9\n7buhGDxAY/+3ZXcOf+z9M+X0iU+H3yMi2z/pMeKPU9k9yyYPnzFjRu/KhSJXLAAACJOCGuzi\ny/XXa9qGgQsu8JrPPWDJfnPcTU1t5rDXFTGaPi550GdPlYgVkdmTd2W32+u06ty5c7Oi0ZEr\nDQAAhElBDXYma/0+11hTdr60O8N9zkupf43emOa6ps0IvVzhjp033Xnu4PlccuOiInJyy8kI\nzO3LPJLlvXQ3AAAQMgU12IlI14HXeT2n+6w497SAX1/9QEQ6DKl93hHelR+91vrm6wrbYk0x\n8eWqN+gx5N2DmZ6cPfynQTy6O2XjhwOrl7LFRhsN5phy1zUeNHWZv8PsKomm2DoikvrXcE3T\n7JWm5zw87Y9lj917c1F7nDEqpmyNhi9O/vpixe/7rIWmaWVbf3lO+47JDTVNq/zIikBX4Zx3\nmOkVkdik2OyWzS9ff87JE96sI+++9ES9a0vHms2JJcrf123grydd5w/15+qPu9xzS8kihcwW\nW8Ua9Xq8POX302fF3N+mNtQ07ek/Tjr+XPJA46qxJsuHR06LyImtXz7b4c4Kxe1moyneXqpx\ny66z/3fo8t4OAADIG19Bc/y3B0WkSK3FzpPf6zQt8bqJ53RoaosyxtTI9PruTogWke9OOv3t\nb3asKSKaphUtX+Pmm+oWMupFJL5C623pWdnH7prRWESaju6iaVpM8QpNW7VpVKesf6Favvmr\nz+fbPHZYv95dRcQc13DAgAHDxmzMPqp6/5dKmvWxJSo2a9WmcZ1r/j1qa/bgv4ysKyK3Ldzr\n8/my0rdF6zSjpUqG56ziHy8RKyKTDqRd7O1XtRhFZNaR9Au96H6giEVEOv/wT3bTz0PriMid\nKw6c6eHc175Koex1qFwyXkSiEhp2LhojIl+eyPB3Wzeuk17TNE0rWrZqwxtrJsYYRCSm5G3L\nD5/OHnnHlAYi8thPX9eKM0UXvbZZi1afH884ummszaATkYTy1Ro1aVS1bLyI6PSxE7afuNg7\nAgAAwVKAg53P53u2pFVniNvndGe/6jg4WUTK3bPU5zsr2O2d/7CImOPrfb7lmL+nK21Xr1uK\ni0iZlh9kH+6PaCLSsNfM7Mi1akJrEYm2tzpzoOMnEYm75qXzj2rQ+6NM75nGDe8/KCKWxHbZ\n3XIGO5/PN6pKgogM2Plf4jl9dJ6IWArfn8vbv3Cw87gO7t444pG6IlKkfs/sGnznBbuFD1cU\nkfike1fuPeVv2b/+4yoWo79+f7A7tWeyWaeZYmu88+3vZ4bPOvb20/VFJL7C49lB1B/sipSL\nve2Fj097zkzZp0yciHR8d212ZYsH3igiReq8l8ubAgAAQVGwg93WN+uLSLtv/85+9ce+14nI\n89uO+84Odo+ViBWR59ccyjlU1ukdJcx6TRe12eHyt/gjmiXxPleObOTzOhOMOr25hP/ZxYJd\ntL1N5llHZcYbdIbo8tkN5wS7vQvuFJGk+5dld9j0Ui0RueGNLbm8/ar/hrALatB99NGss/YA\ncwY7d8aeeINO00UtOXo6Z5+/lnbNGeymNyouIj1WHDxrYm9Wx6IxIjLlH4e/wR/sLIXb55yv\nYrRRRHZn/LcJ6nL8PHTo0BGjF+bypgAAQFAU4N/YiUhSx5dEZFX/JdktI6f/boguP/zsq3t4\nnHun/5NuiE4adVPRnO2G6MqjayT6vM4xv5/K2V6mXR9jzvMuNHMxo158vtyLKdO2n+mso0x2\ng04uflCpO8ZE6bT9S/q7/+0zdPJOTTO80a1S7hOJSNFySRVySipnjzaIyKbZ02b/7+jFjkrd\n/8Ypt9dWfvhdiWedJFvq9rdKmvX/PvMO23hUb0wce3Pxsw7WDE8llxWRT1ae9YO5a9o8m/Pv\n0L0lYkSk+X09l6zb7vKJiBhjag0ZMuSF3m0u+aYAAMAVKtjBLqpQi0eLxRz7pf9Bl1dEMo7O\nnn/sdPHGo2POvoKdK229x+eLKnSX4bzTZCveVlRE/tx21mmkthq2yyjGXteep/4GS9WXry3k\ncvw0cl+qiDgOvLX4eIatwks3x5sueew517Hb/fueo45T84e3yDy5vU+Lthc7N9Xxx+8iUrhB\n/XPaNZ0lOdHif+xx7t3rdHuyjkXpzr2/Rf23tolI6vbUnMcWuv6sDP3S8plNK9r2LZ10d4Nq\nsXFFb7ytde+Xx/3w24nAlgQAAFyRAnznCb9ne1Z5f8DGPusPf3xz8V3vjRaRu15rdF6vi+6b\naXpNRLwu7/mNeaUz5TklJ796Q/+2X300fPOgaTdvfnmSiDQe0/kyphYRTWe5b9CiuqMsG1PX\nLDiW0S7xAheu0/z7kBd6cwnGM8X7fFkiYogq26fnAxecqNiNhXM+NUSf9Vcotkyrb3ce/vGb\n+YuWLFu1eu2Pq77Y8P3icS/3azVg3ucj2LQDACC0Cnywq/joABnQ7vv+38i6zhMn/KY3FX/t\nusRz+pisN+o1zZnylUdEf/ZLe1YcFpES1S9ni+7Klb5zTJTu630LBnnfX9579h690f7W7aWu\nYDx9q4TojWmuraez2skFgl1s2Woi3xxdt1Hk3Oz77b93iTVEJRU26k94T4947bXLvAygZqp3\nR4d6d3QQEU/GkeXz3nv40cGLR9778fPpDxbmOskAAIRQwf4qVkSiE9s+WMRy9Kd++48sff9Q\nepF6bySc94WrPiqpU1GLO+P3/usP52x3Z+zq9dMxTWfqXSkyd9zyfxubeeqHl7/vuyHNVazh\nhNJm/aUPu7hCBp2I7Hd6LviqtdTzCUbdyT9eXHbcmbP9xK8jVp3KPPNEM/avZPO4jgz835Gz\nj/Y+XTOpePHin599bE6nj3xUsWLF6+r3ym7RRxe5veOLEyoW8vl8y1IueiAAAAiKAh/sRKRP\n90oe15HkAc+IyG2v33bBPi+92UpE3rqrzZIdZ35O507f80LLW//OdJe+c8oN1txONb0gnyf1\n0p0CkPzqDSLy2r2TRaTt+NuvcDT/t8GHUzIv+KreXPqDDhV8noz7G3Ra93e6vzFlx9I2t76S\ns1un6d1FZEyz5rM3/ONv8XnSPuzTdNKWPZlx97exR11s9qhCt5/8c+/WDRMGf741u/HYti+G\n7D2laYZORS1X9N4AAMClqBDsKj3VU0T+N/0PnaHQG/WKXrBPufs/HvtQjcyT/2tZLbF05eub\n3FCtkK3i6O8Oxldo8/W8jnmaTm++xqzTHAcn39muw2PPLL/C4kvfOTpKp2WlZplia71e49wv\nkfOqTHGLiPwxbefFOtz1zjf3V7ad3DW34TXxpSrVqVWxuL3a3T96arzZpWJ2n8J1X/msX3OX\nY0uHG0uUq3ljs9saVSxWpNOYFeb42rNWvZbL7DpjkcWDmvp8nuH31ChasVbT5s1uqFmxaI3W\nuzKymvb/8tb4q+jWvQAARIQKwc5SpFMbe7SIJF43svhFz2DQnv9o8/IPXmnRoMrpgzvW/ro/\noeIN3QdP3b5tQeXovP3QUGewfzPisWsKW5Z9vuCHX6/0fE+DpdrQawuJSLn2b0Zd8Z9GpWer\nisiuaW0+OHz6gh305jKf/LLj7Re71alQ7OS+X/ed0t/5cK/1e1bVt52Vuu55/ZufF01Kbn5D\n+v7tK1dvcsRd++Bzr/705/q7LrXrVn/w12tmjWrduI7v6O8rv1v529+n6zdvP2nhz8teu9LN\nSAAAcEma71KXZ0Oo9SobP+7P1LcPOLqXiIl0LQAAoAAj2EXY6SOzY4p2sBR+IP3IJ5GuBQAA\nFGwF/nInBVd6qtNsTHv9np4iUm/I4EiXAwAACjx27CLmmZLWtw46RCS6cOM//l5x8V8HAgAA\nBIQwETF172hUrUrNFg/2/nbbN6Q6AABw5dixAwAAUAQbRQAAAIog2AEAACiCYAcAAKAIgh0A\nAIAiCHYAAACKINgBAAAogmAHAACgCIIdAACAIgrSvWJdLldGRkYQB7RYLJqmuVyurKysIA6r\nhujo6KysLLfbHelC8p3o6GidTpeVleVyuSJdS75jNpt9Ph8rcz6z2WwwGDwej9PpjHQt+Y7J\nZNLpdKzM+Uwmk9Fo9Hq9AX72xcfHh7ok5H8FKdh5vd7gJjCDwaBpmtPpJNidLyYmxufzsTLn\ni4mJMRgMWVlZLM75oqKi+GtzQVFRUQaDIej/iKnBaDRqmsbKnM9oNPr/f4DFQeD4KhYAAEAR\nBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFFGQrmMXCtqKNZEu4arjXDon\nPBOl9R0cnokAAMgn2LEDAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAA\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Monthly\n",
    "Monthly <- ggplot(allDataClean, aes(month, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    #geom_text(aes(group=month, label=ifelse(member_casual==\"casual\",(length(which(allDataClean$member_casual == \"casual\")) / nrow(allDataClean)) * 100, (length(which(allDataClean$member_casual == \"member\")) / nrow(allDataClean)) * 100 )) ,vjust = -0.25, position=position_dodge(width=1), inherit.aes=TRUE, hjust=-0.5) +\n",
    "    labs(x=\"Month\", y=\"Number of Members\", title=\"Monthly Riders\") +\n",
    "    coord_flip()\n",
    "\n",
    "Monthly + scale_y_continuous(labels = label_comma())"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "155e0e15",
   "metadata": {
    "papermill": {
     "duration": 0.018976,
     "end_time": "2024-07-29T23:09:41.712216",
     "exception": false,
     "start_time": "2024-07-29T23:09:41.693240",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can see throughout the last 12 months that the summer time is the most busy for Cyclistic. The months June, July, and August are the most busy months for Cyclistic, August being the most busy and having 13% of riders from the dataset. We can observe that in all months we have more annual members than casual riders and that at the end and beginning of the year (winter season) the numbers in both memberships go down drastically, especially for casual riders. In January specifically we can observe a major upset between casual and annual riders as about 85% of riders is composed of annual members. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "232f913e",
   "metadata": {
    "papermill": {
     "duration": 0.019002,
     "end_time": "2024-07-29T23:09:41.750482",
     "exception": false,
     "start_time": "2024-07-29T23:09:41.731480",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Average Weekly Distribution of Cyclistic Members Relative to Membership "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "1674c9b7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:09:41.792247Z",
     "iopub.status.busy": "2024-07-29T23:09:41.790440Z",
     "iopub.status.idle": "2024-07-29T23:09:46.496586Z",
     "shell.execute_reply": "2024-07-29T23:09:46.494546Z"
    },
    "papermill": {
     "duration": 4.729792,
     "end_time": "2024-07-29T23:09:46.499003",
     "exception": false,
     "start_time": "2024-07-29T23:09:41.769211",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Weekly\n",
    "Weekly <- ggplot(allDataClean, aes(day_of_week, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    labs(x=\"Week Day\", y=\"Number of Members\", title=\"Weekly Riders\") +\n",
    "    coord_flip()\n",
    "\n",
    "\n",
    "Weekly + scale_y_continuous(labels = label_comma())\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "154f0eaf",
   "metadata": {
    "papermill": {
     "duration": 0.019643,
     "end_time": "2024-07-29T23:09:46.538807",
     "exception": false,
     "start_time": "2024-07-29T23:09:46.519164",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "This graph shows us that the days with the most amount of rides are Tuesday, Thursday and Saturday, with Saturday being the day with the most amount of rides. We can observe that throught the week the number of rides is very close to each other regardless of what day it is. For all weekdays the majority of rides are from annual members while on the weekend, the annual riders decline while the casual riders increases to a point where we almost have an equal amount (50/50) of each member type. This tells us that annual riders tend to ride more during the weekdays than on the weekends and casual riders ride more on the weekend than the weekdays. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "d2868726",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-29T23:09:46.583148Z",
     "iopub.status.busy": "2024-07-29T23:09:46.581395Z",
     "iopub.status.idle": "2024-07-29T23:09:57.741948Z",
     "shell.execute_reply": "2024-07-29T23:09:57.740074Z"
    },
    "papermill": {
     "duration": 11.185802,
     "end_time": "2024-07-29T23:09:57.744386",
     "exception": false,
     "start_time": "2024-07-29T23:09:46.558584",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2AT5R/H8e9lJ21pS8vee0/ZUxFQhogKCqIgCqgMQZmyQUQF2YIgbkXhpyjg\nQGWjgAMFUbbsKVBoKZ0Z9/sjEAs0aTrShuP9+qu5557n+eauDR8uNxRVVQUAAAC3Pl1eFwAA\nAICcQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYZqBZi\nUm6i0xnCIgrUad5+yts/uK5f//cXayuK0m7Tad/DzioXqSjKt5eSA1e5D4OKhSmKsi/JkbPD\nJl/6VlEUg7motxXWtiulKEr913bl7LwBknh2Q++774gONRWqNtrPLgc/aKEoSosPDgauqpt/\nGw3m0GJlKj341PCvdsUEbl4AwC3BkNcF3BoKlSkXplc8L12O1JjTp3b+tHrnT6s/Xb9g9yfP\n5mFtCJAJzR98/5/YwnVbtW1QId0VVFfC1m07DeaSDeuVyOXaSpQrb772+5h0+eLZYwe/fPf1\nFe/P6/7qt0uGt8rlYgAAwYNg55eZv+x6tIAt7RLVefnzV3o9PG7Fnk/7T33p0dHlwt3LS3d9\n6f3KF4tVjsyLMpFz1NQ5h+KMtiqHfltr0ynpruJIOtCsWbN8JcfFHZucy9Wt/HNPnRCj52XC\nmb0fzp44ePpnn4y421r2yNsPlc7legAAQYKvYrNI0efrOvbLAUVDRWTpggOe5VF17+vVq1fr\nQta8Kw05QHUl2VXVaKvmLdUFlZAiVZ59bdm2+Q+IyIc9O/xrd2XYBQCgSQS7bOnavJCIxO6K\nzYO51ZRz/Pvtw+23fe549n+PFwqxJ+559oeTeV0LACBvEOyyxZXiEpHQcqGeJTsn3XHDxRMu\n+7nF456uX7FEqNkcXbTsg33H/BWbevNQx3765InOdxYrGGm2RVSoUb//pIX/JF53ccO+RU0V\nRRl4KPbKsW+7Na8aarJ9dC5RRC7+/c1z3e8tXyTKbDSFRxVv3rH30l/O+lO8qrq+e2NU86ql\nwyymyILF7+7S7+trZ98f/bK9oiilO31zQ5e9C5oqilL5yY3+jO8316aPX+nUomaBiFBTSHiZ\n6k36T1h8OsXpad72bFVFUR7ae92VAaozTlGUkAJdPUu8bZ8szLi2XSmdIUJEEi98rihKWLFB\nNw+xtEq0KbSuiFw+/pKiKFGV3kvbGn9oTZ8HWhSKyme0hJSu0XT0gu9vHiHDPZ55+pEvVheR\nbVN+9SxSnXGfzBh2d4OqUeEhBpO1QImK7Xo89/2+OHdr7u5oAEDgqfCpqs0oIkvOJaTX6OhW\n0CYivX4841m0Y2JdEbl346mrayQffaRKpIgoilKobI3KxcJFxJK/aa9CISLyzcUk92rbZvXU\nK4qiKIVKV23asFZ0iEFEQoq1WvdvomfkvQubiEifP76vnc9kLVSxdfv7VsYknf99ZoRBJyL5\ny1Zr1rJZ1dLhIqLTh87dc9HHmxpYNFREXu5bR0SMoYVq16kUYtCJiM6Q76UfTqqqak/YbdUp\nRluVJOd1HfsVDRWR+afi0x026eI3IqI3FfE275p7S4pIvVf/TLtwzuO1PNunReN6kUa9iISX\n77Q7we5eYeszVUTkwT0X0vZyOWJFxBbdxff2SbeMDGc8+O6ro0YMERGjrdKoUaMmTF158yA7\nZ04eMbS3iJjzNR01atTkGdtVVT3wfnMRqT5yXDGzPrRohdb33d+8bkn3H1rHOX+n7e7PHk+X\ne7Q/rqSm2xp7eISIWKM7X9tKl/s2KCgiOkNErXqNWzapXzrS7N5Hq84nqlnd0QCAoEWwy0D6\nwc6Zevrg9qlP1hORgo2GpLj+a7kh2K14rIKIhJd7YNOROPeSEz9/UsV29bR3d7CLO7zArFNM\noTXeWvvP1eHtF94c2EhEwsv38/yD6w4uBcuEtnrxk0Tn1SmHlconIo8v3uqp7KsxDUWkYN23\nfbwpd7BTFH3fN35IdamqqjpTzs8f0FhEjLYqx5MdqqpOq5JfREbt/y8gJp7/XERsBR72Nqw7\n2CmKobIXJUOMNwS7I8sfExFzeP2Vu67mttT4Ay/cWURESnX8wL0kU8Huhu1zM39mTHf8m6Ve\n+UNE8pUc51niDnYi0mTox57fil/fefSGofzc4+nyHeySYlaKiMFS1v3y1IauIhJWssu+i8nX\n3lf8ot4VRaTGsF/dS7KwowEAQYtgl4Gqtv+uPbxZk2deP2+/7h/itMHOkXQ43KBTdJZvz193\nGOb46t5pg917zYqISP+Np6+b2GV/vFCIiCw8c8W9wB1cbAUeSTtfBatRRA4m2T1LUq/smDhx\n4tTXV/h4U+5gV6rTx9cvdg4sGy4i7ZYfVlX1yBf3iki5h9d4mn8fV1tEGkzf5W1Yd7DLUNpg\n16doqIg8v+Vs2nHsiXuLmvWKzrLzSqqayWB3w/a5mT8zpjv+zbwFO2vU/WmzvupKCTfoDNay\nngV+7vF0+Q52KZe3iYiis7pf/vPRkM6dO7+49lTadWIPDxORkvde3bNZ2NEAgKBFsMuAO9gV\nKlOufFrlykRZDSJijqg676frIkLaYHfxwLMiEll++g1jupwJxcz6a8HOWcZi0Bujk286xvTz\nwGoi0nLp1YM67uBSuc+WtOuMKBchIqXbDfhm6+4Ur0epbuQOdsMPXLph+dFVbUSkaPOvVVW1\nJ+y26BRTaF37tWHvi7IqimFTbIq3YTP7Vawj6bBeUQzWcvabKv+kXiEReXzneTWTwe6G7XMD\nP2dMd/ybeQt2lfvdWENZi8FzFM3/PZ6ujI7YfZX2iN3Nki8ee3tI9bTBLgs7GgAQtLh4wi8z\nf9l1MK1/Dp+/Erf8pfYpsXuGtX/I27WXVw79IyIFmjS6Ybmis3WNvnpXPGfykSPJDqf9gkV3\n4xMFGr2xW0Qu77mctm/kHdfdIW/cug/vrhBxdPX8Dk2qheYr1LBVp6GTZv2476I/b6pzIdsN\nS/LXvktEEk/tExGDreqkipGpV/549ehlEbly6o2vYpIiyo9rEW7yZ3B/pMb/7FRVS2Q7w013\nFKnQqpCIHNud6cuNb9g+uTDjzaLqRflozewez5TUy1tFxBha07PEkXj0gzkvPfnog80b1C5R\nKMKSv1Sf2X+n7ZILOxoAkGu4QXEWKTrbg2NX1Ztm2355yxcXkrpEp3PjOsWoiIikdx+0/Mar\nkVpV7SJisJQeNqRbuhMVblgg7UuD9bpdFlrqvrX7//3th+Wrvl2z+aetv23++tcNX82aNOK+\nUZ+vnHp/Bm/hpsIUnUlEFN3V99L15QYjH/ru45d2jn23xc5J80Wk+YxevsfMJNVrbXpFRFyp\n3u9XoqbfdMP2yckZ/aYz+fr/Umb3eKac/GaDiISXf8z9MuaPtxu07H/4ij26wh13NmrQomP3\n8hWrVi+7sUHDmWl7BX5HAwByCcEuO/T35bduj0/9O9HeRdIJdqGlq4n8cH7bdpFmNzStvfaU\nWIOlXAGj/qIrceorr2TxTriKqf493evf011EnEnn1n3+9mNPjf/q1Qc+eT7h0QK+7pO86lxS\n47Drjspc2r1BRMKrVXa/LHHvDIvu+6NfjHW9s27o0sN6Y9QbbYtnrcZ0mcIa6hUl+dJ3ThH9\n9U2HN/4rIkWrR3jra0/KyvNYszNjTsmBPe6Va+bLf4tI47H13a8HtB9y+Ir9+U9+m9m9nmel\ny0d/uaFboHc0ACDX8FVstkQadCJyItmZbmtY8efzG3Wxh0aviUlOu/ziX1M3x6VcfaEYR1aK\ncKaeG/PLuet7uwbWKlekSJGV1/dNK/HcxxUqVKjZ6AXPEr21YNvHR8+tEKmq6ppLXju6LRvx\n3Q0zzh60RUTuHF7V/dr9JV1K3I+TNgz/NT61cNO5Jcz6m4bJOr2lXM9CNkfSPyN//jftckfS\ngRf+uKDoTEMr/fe9asK/172dUz9MDfSMgZKNPe7brre7v3PmitFWdWHb4iKiOuP+dy7RYC6Z\nNtWJyOUDe27oGOgdDQDINQS7bHF/5/bvpZR0W/XmEh90L686kx5u0nPbyQT3wkt7V99/15S0\nq/V87xkRmdG6zdJfz7iXqM74j4bdPX/X4ZR8D98fZfE2uyWybeyxI3//Onf8yv/Omrqw++sJ\nR+IUxdDzplPobnD0yx4DF29yf/Xoclx6a0jLmQdirQXufaNxIc86XV9uICKvPLBARB6a3db3\ngFkwbs59IvJGu/u/3Xv15DZHwuEXO951MsVR4t6FDcKMIhJRI0JEfnl6oudJWZf2rLiv17eB\nmzFTVGemT4nL8h73JuXCP++Of7z+05+JSK8Pvylo1ImIog8rY9E7U0+8u/uSZ83fPp/Z+oGv\nRcSZdN3NkAO9owEAuSSvr94Idj5vUKyublFMRCr32+hZcvMNih+uHCEiiqIvVrFOrfKFFUUx\nRzSY80QFSXOD4i9HtHHvjtI1G9x9V9Ny0RYRMYfX+fbsf/O6r/ps/v6BtAVsm3T13+CC5Wu1\nan13/ZrldYoiIq1Hfe/jTQ0sGmowl2xS0Coi5ohi9etXDzfpRcRgKf3BnusulbUn/G3RKSJi\nCq2d5Ps+Ilm8QbFrZo8a7u1TvFLdFvWrhhp0IhJe/v69iVfv4ZISt6W0xSAiluiq7R/oeleD\n6ladYgqtWSPEePNVsTdsn/RkPKPq31WxTvsFs05RFOM9D3V7auBa9dpVsTfXcP1Vsarq3x5P\n19VeFf+7O2CZ4oWMOkVEFJ350Wnr0q68dXxLEdHpQ5q1ve/hzvfWqlhIpw/tPnKUezc98ewA\nzw3/MrWjAQBBi2CXAd/B7vDnbUREZwh//9q/xzcEO1VVnSln3hzd944KxUJMhvACxdo9PnTH\nxeRfhlRPG+xUVd2xan7XNg0KRIYajJZCZWs+Ovjl3dffb8JbcNmyZFqn5nULhIfodYaw/EWb\ntO02f8UO329qYNFQc76m9iv/vP5Cz5qlC1uNxshCpTr2HLrlRDp3UHu1cn4RqfTUJt9jqll9\n8oSqOtd9MKVD0+r5w6wGS1jJKo2eGb/oVMp14eLSnq96d2xSMN/VUwZDSzT/dPelLtG2LAU7\nv2b0J9ipqrrp1b6lCobrDKaKLf+nZibYqX7s8XTd/H8zndFWpGSF+594YeW1e7WkfadfzxnZ\nuFpJq0kfGlmwSYfHVuyKUVX1jV4twy2GkKgSlx3/3XPF/x0NAAhaiprePxWAxwulw2cdu/zm\nqSvPFA3J61rEkRBz5FRi2YolOAUsxwXVjgYAZA3BDr4knlsaUqi7rUC3hHOf5nUtCCB2NABo\nA7c7QfoSLiebjfGvdR4iIvUnjM/rchAo7GgA0BKO2CF9g4qFvXH6iohYCzQ/dHJjEZ833cWt\nix0NAFrChzjSV++eZtWq1Gr/6NC1u3/gH3sNY0cDgJZwxA4AAEAj+A86AACARhDsAAAANIJg\nBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCJ4V61VCQoLD4Qj0LDqdzmq1\nikhSUpLL5Qr0dFnjLjIhISGvC/HKaDSaTCZVVRMTE/O6Fq+MRqNer09OTs7rQrwym80Gg8Hp\ndAZzkRaLxel02u32vC7EK5vNpihKampqMBcZEhIS/J85EtwfjHq93mw2B9VnTnh4eF6XgLxH\nsPPK4XDkwueyXq83GAwi4nQ6cyFHZo3BYDAYDMH8r5R7M6qqGsxFGgwGnU4XzBVaLBaDweBy\nuYK5SKvVGvw7WlGUlJSUIC8y+D9zRMThcDidzrwux6sg/2DE7YmvYgEAADSCYAcAAKARBDsA\nAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACN\nINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgB\nAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABo\nBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYY8roAAECmhU2fnK3+r83NoUIABBeO2AEAAGgE\nwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARnBVrFcWi8VmswV6FkVR3D+Ehoaqqhro6bLGXWR4\neHheF+KVTqcTEUVRgrxInU4XzBXq9XoRMRgMwVykwWDQ6/UmkymvC/HK/fdisVgCWqQr2yME\n/2eOiISFhQVzkUH1mRMXF5fXJSAoEOy8cjqdDocj0LPodDqDwSAidrvd5cr+Z3VAuItMTU3N\n60K8MhqNer1eVdUgL1JEgrlCs9ms0+mCfDPqdDqn02m32/O6EK8MBoOiKIEuMvuf3cH/mSPB\nXaRer9fr9cH8x4LbE8HOK7vdngv/eOj1eqvVKiIpKSm5kCOzxmAwWK3WpKSkvC7EK1VV3UdH\ngrlIEVEUJZgrNBgMBoPB6XQGc5FGo9Futwdzhe4j/YEuMizbIwT/Z46IJCcnO53OvC4nfUaj\n0Ww2B/OvIm5PnGMHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBG\nEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwA\nAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0\ngmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAH\nAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACg\nEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjcjt\nYJcceynRpebypAAAALcDQ25Olhyz7ak+r7Z485OnC4eIiIhr49IFX23+40S8vnL1Bk8M6l3W\n5qnHR5P4sY63Jn+GBQAAuCXl3hE71ZW0YNSceOd/h+sOLx87a9m2Rg/2nTCkZ+ihdWOeX+Ty\noyk73f0ZFgAA4BaVe8Fux/tjdoTf+d9rNXXmsr3luk/u2rpxtTuaD542MOHM90tOJWTQlJ3u\n/gwLAABwy8qlYBf3zxdTv0seN+Ehz5KUuM3Hk51t2hRzvzRHNKsTavp941nfTdnp7s+wAAAA\nt67cOMPMlXrm5XFL7h25qIJN71mYmrBLRKrajJ4lVWyG73bFSQ9fTdnpnnpnBsP+9NNP48eP\n97ROnz69bt262Xzv/gsPD8+1ubImKioqr0vIgKIoQV5kkFeoKIqImEymIC/SaDTabLa8LsQr\n92a02Wy+i0wdNTjLU5henZOa5c7XBP9njohERETkdQm+BNVfdExMTF6XgKCQG8Fu9bRxsXUH\n9LkjWnVe8ix0pSSISJThv0OG0Ua940qy76bsdM9wWLvdfvnyZc9Lp9Pp/oDOHbk5V9YEf4Vy\nKxQZ/BVK0BcZ5OW5BbTIHBmczZgjgr9C3G4CHuzO/Tz/vb2FF75/5w3LdSariFxyuEL1Vw/j\nxdid+giT76bsdM9w2HLlyg0aNMjzskCBAgkJAT8DT6fTWa1WEUlKSnK5gvRaDneRubA1ssxo\nNJpMJlVVExMT87oWr4xGo16vT05OznjVPGI2mw0Gg9PpDOYiLRaL0+m02+15XYhXNptNUZTU\n1FTfRWbnwzchISH7n93B/5kjwV2kXq83m83B/JmD21PAg935H3elxp958qHOniXf9Ou+JqTW\nxwuaiWzen+QoYb4asw4mOcKbRYiIMaSGtyYPH+t4a8pw2JIlS/bq1cvzMi4uLikpKUc3Rjr0\ner378yslJcXhcAR6uqwxGAxWqzUXtkaWqapqMplEJJiLFBFFUYK5QoPB4A52wVyk0Wi02+3B\nXKH7G9gMiwzLxhRJSUnZ6e4W/J85IpKcnOx0OvO6nPQZjUaz2RzMv4q4PQX84olyPUfPvGbG\n6xNFpOmYl6dNfdYScVdRk/77n865V7Mn7Pw1PrVu68Ii4qPJIwvd/RkWAADg1hXwI3aWQqXK\nF7r6s/scu4hSZcsWDhGRYV0qD39/4toiI6pF2lfNn2ErcnfP4qEiIorJW9Phzz/elBDau1dn\nH+v4aPLaBQAA4NaXl89dKP/IlP4ps5fOGh+TrJSr1XLK5L66jJpOrV/91YWCvXt1zlp3H10A\nAABudYqq3mJPbn134CtPvvFiLkwUFxeXCydo6/X6yMhIEYmNjQ3m810iIiIuXLiQ14V4ZbFY\nQkNDVVUN5gv+rVaryWSKi4vL60K8CgsLM5vNqampaS8PDzb58uUL8nPsoqKiFEVJSEjI4By7\n6ZOzPEX88PHZ6S4i5tfmBv9njohcunQpmM+xy5cvX1B95kRHR+d1Cch7t9gRq7NbvjlYpW1e\nVwEAABCM8vKr2CwIK1lnSpOieV0FAABAMLrFgl1ICVIdAABA+m6xr2IBAADgDcEOAABAIwh2\nAAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAA\nGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGw\nAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA\n0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiC\nHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAA\ngEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AhDXhcAAMgD\n1lfGZ6d7/PBsdQcQIByxAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEO\nAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCZ8V6FRISotfrc2268PDwXJsra6KiovK6\nhAwoihLkRQZ5hYqiiIjJZAryIo1Go81my+tCvHJvRpvN5rvI1GxMERUVlZ3uOSJ3fkkiIiJy\nYZYsC6q/6JiYmLwuAUGBYOdVUlKS0+kM9Cx6vT4sLExErly5kgvTZY27yLi4uLwuxCuz2Wy1\nWlVVDfIijUbjlStX8roQr0JCQoxGo91uT0hIyOtavAoJCXE6ncnJyXldiFfh4eGKoiQnJ6ek\npPhYzZqNKeLi4rLTPUcE9G/tlvhgNBgMISEhwfyZg9sTwc4rl8vlcDgCPYuqqu4fnE5nLkyX\nHcFcnsFw9Tc5mIs0Go2qqgZzhS6XS0SCvEhVVYP/j0UC/AESDG8/d2pwOBxBG+zch2aDYV8A\naXGOHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiC\nHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAA\ngEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ\n7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAA\nADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSC\nYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcA\nAKARBDsAAACNINgBAABoBMEOAABAIwx5XQAA3HrCpk/21pQqIiIGkTDv3eOHj8/xkgBAOGIH\nAACgGQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACg\nETx5AgBuPZZ2j2Snu5pTdQAIMhyxAwAA0AiCHQAAgEbkxlexqZcPvD33na1/HUrWh5QsU/Wh\nfgOalgoVERHXxqULvtr8x4l4feXqDZ4Y1LuszVOPjybxYx1vTf4MCwAAcEvKhSN26oIXxm+9\nUHjA2JdfGTO4sn7f68NGXrC7ROTw8rGzlm1r9GDfCUN6hh5aN+b5Ra5rfXw0iR/reGvyZ1gA\nAIBbVMCDXUrchvXnEp+a1L9xjUoVqtV9ctRwZ8qJZecTRU2duWxvue6Tu7ZuXO2O5oOnDUw4\n8/2SUwki4qvJIwvd/RkWAADglhXwLyJ1hugnn3yyYZjp6mvFICI2vS4lbvPxZOezbYq5F5sj\nmtUJnf37xrOP9yjno8kzbBa6P9zhiO9h4+PjT5486ZkiKirKZDJJgOn1+ht+CELu2gyG4P3a\n2rP1grlInU6nKEqQVygiQV6koig6nS6YK/RHNusPhrcf0BrS/kUrihK4ibIj2D4YHQ5HXpeA\noBDw30hjSM3OnWuKyKWdv/xx5swf65YXqHbf4wVtSad3iUhVm9GzZhWb4btdcdJDUhO8Nnn4\nWMdbU+qdGQy7ffv24cOHe1oXLFjQoEGDHNkI/ggLC8u1ubImIiIir0vIgKIowV9k8FdoNBqD\nvEij0Wi1WvO2hpTsdY+IiMjOCMGwg3KnBj4Y/XfhwoW8LgFBIff+q/HvT+u/++fUsWNJjR8s\nLSKulAQRiTL8911wtFHvuJLsu8kjC939GRYAAODWlXvBrvLAF6eLJJ7+9YtLcIcAACAASURB\nVOmBUycVqTqislVELjlcodcOucfYnfoIk4joTF6bPHys460pw2Hr1av30UcfeV5GRUXFxsbm\n8Fa4iV6vd/+XND4+3ul0Bnq6rHEXmQtbI8vMZrPValVVNS4uLq9r8cpsNhuNxitXruR1IV6F\nhIQYjUa73Z6QELznnoaEhDgcjpSUbB4yy65sHjCMjY3NzgjB8McY0BpuiQ9Gg8EQEhISzJ85\nuD0FPNhd/ufHHw+ZO9xz9TtNW9EG9+W3fPP9WeMdNUQ2709ylDBfjVkHkxzhzSJExBjitcnD\nxzremjIcNiwsrEqVKp6XcXFxdrs9p7fHjVT16h3gnU5nkJ8hEczleU5zCeYijUajqqrBXKHL\n5RKRIC9SVVWXyxXMFfojm/UHw9vPnRocDkfQBjv3yX/BsC+AtAJ+Vaw9adNbC2e5728iIqI6\ndyc6bCVtloi7ipr03/907upqCTt/jU+t27qwiPho8shCd3+GBQAAuHUFPNhFVn66nCll1Cvv\n/P73/n/2/rls7vCdSebHHisrimlYl8r/vD9x7e/7zxz++93xM2xF7u5ZPFREfDQd/vzj9z5Y\n4Xsdr00+ugAAANz6An+7E2OBKTNHL1j0yYzJ3zuMYSVLVx7y6vimkWYRKf/IlP4ps5fOGh+T\nrJSr1XLK5L6emOmt6dT61V9dKNi7V+esdffRBQAA4FaXGxdP2IrVGza5XjoNir5Nr6FteqXX\nx0tT8wVLDg58JcvdfXUBAAC4xd1iR6zObvnmYJW2eV0FAABAMAqWW2b7KaxknSlNiuZ1FQAA\nAMHoFgt2ISVIdQAAAOm7xb6KBQAAgDcEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQ\nCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIId\nAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACA\nRhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjMhXsXGcOH3T/lHzutwnDBzw35tU1\nh+MDURYAAAAyy+Dneqlx2x5t3nHVocKpCbtVx6X7q7b8ISZJRN6cuej9/X/1KBkayCIBAACQ\nMX+P2C3t3PXLPam9XhgkIud+H/JDTNKAbw9cOvJjXePpYY/8L5AVAgAAwC/+Brupv54r1WnZ\n4peeEZFdUzabw5vPaVchonSzOY+Vj/lrZiArBAAAgF/8DXbHUxzRjUu4f/7g1/NRNV/Qi4hI\nSNkQR9KhwNQGAACATPA32DXNZz71zU4RSYld8+n5xLov1nUv377ypNFWOVDVAQAAwG/+Xjwx\n6YmKzWb3vq/P74ZfPlIM+ae2KOJI/mfxjBmDt5wt1GpGQEsEAACAP/wNdo2mrZ946t6p7821\nK9beM3+qEWK8cmpl/7ELQ4s3//izBwNaIgAAAPzhb7DTGaLGL/ttdOKFBH3+cLNORCyR7Vas\nbnxnm8bheiWQFQIAAMAv/gY7t0Pb1n36/bbj5y62eG1hN+PpiOI1SXUAAABBwv9gpy7o3WzA\n+1vdL2zj5na4MveuOl+36DNv7aIBBtIdAABAXvP3qthDSx4c8P7WuwfM/vPgKfeSyArTpvZr\nvGnxwE4L9wWsPAAAAPjL32A3Zeia/FVGrX1jcM3yRd1LDLbKoxZumVQjatPElwJWHgAAAPzl\nb7D7/EJSuScevXn5Az3LJsd8laMlAQAAICv8DXYlzfr4g5dvXn5pd5zeXDRHSwIAAEBW+Hvx\nxOiGBZ/4uOfPr+xuFG3xLEw8vb73ssPRdd8KTG0AEBBh0ydnp3v88PE5VQkA5Cx/j9g9uOyt\nksrxlmVqPz1ssojsXvruS8OfqFrhnuOuIvM+eziQFQIAAMAv/gY7a4H2O/5c9VB93dszJ4rI\nxrFDJ8z4OKxR1y937HqoSEgACwQAAIB/MnGD4nwV2n2yvt0754/sPnTaobcWr1CteIQ5cJUB\nAAAgUzL35AkRsRYoU69AmUCUAgC3D0u7R7Lc93wO1gFAW3wFu5UrV/o5yv33358TxQAAACDr\nfAW7zp07+zmKqqo5UQwAAACyzlew27hxo+dnl/3cuB5P/JZU9MlB/Vo1qh6hTz64e9vCafPO\nlOiy8duZAS8TAK4xTH4xLBvduVkJAA3zFexatmzp+XnDM9V/S6yw+dgvDfNfvWCiTfsH+g3o\nfWeROl3GPL73nbaBLRMAAAAZ8fd2JyM+OVjusTc9qc7NYKsyq0/FQ8uGBaAwAAAAZI6/we6f\nJIfOlN7KOnGmnMzJigAAAJAl/t7u5OECtg8+HHl02rrSZr1noTPl+Oh3DtoK9g5MbQC0KVtP\n9Hrp9ZwrBAC0xt8jdmMWPpoSu6lW9XazP/ry5x179+78ZeWSue1r1Fx7Kbn7m6MCWiIAAAD8\n4e8Ru5KdFq2fbXh4xKLne67xLNSbCvSfvW5+p5KBqQ0AAACZkIknT9w1eP7pJ4d///Wavw+d\ntussxcrXaN2+bcnQTD+7AgAAAIGQuVhmDCvdsXvfjgGqBQAAQEREbHpdsYc3Hvy0RV4Xksdm\nlYscE9s0MeZrP9f3Fezq1Kmj6Mx//P6z+2cfa+7YscP/EgEAABAIvoJdaGioort647qIiIhc\nqQcAcGvI1tXNPAIECAxfwe7HH3/0/Lxhw4bAFwMAAIKPmpriNJoNSvAO6JPLEasaIvQZr6gF\nGd/uJOXisd9+3vLn3kOu9Frjz+6b2uOeHC8LAADkraVVosNLjf/trReKh4daTfqIgmUfG/2h\nS2T7+yPrlC5kNYeWqdpw4qd70na5cmzzkG73lCwQYQ7JX7lOq0mLvnVlb8Bdn7/SskapEJM5\nuljl7oNnnEp1+jnde5WiIsvNSon99bE7q4aa819xqv685TNbljzcpl5UmMUWXqBRux6f/Xbe\n07R31fzOd9aNDg8xmKxFytXsNWLuRcd/Y7rsF+aPerJmucIWozFfVIm7H3nu5wvJ7qYRJfLl\nKzEi7Sw7J92hKMrRFKefg2eKz4snXEkz+3Ua9d46u0sVkfyVWi35YWXbwvGTn+m3dMMf/16M\nT0lOTEp1isjoJVmbPajpdDqDIeDX/Or1+ht+CELu2nJha2SZZ+sFc5E6nU5RlCCvUESCvEhF\nUbL4aXdN9t9dno8QDDsooBsh7V+0ouTSQZ3MCrYPRofDEYhhE88taTbwUo8h4xqWMK9a8MqS\nV3rtP/zO7nWJL7wwtqfzyJyX501+vF7rDrHN8plEJOH0itpVHj6uFOvRu2/5aP2fGz+b+EyH\nFVvf2/HBE1kb8Pwf4+v+b2vrrr2G3h/256bPl84dtnbzweO/L7TqxJ/pXI6LvWrfG9P88alz\nn7PqMv5FOvvTlAp3TlCj6/d8emRB/cUv3nm7W9PvLu8/8lSZfCe+GVC985v5KrXsM2hkfpNj\nz5YvPpw+eNvpcgc+7uDuO7t97WHrzt71SL+ufUpcPr594eL5rX88funUCqMfv78ZDp4pvn4j\n/5rRbug7m4wh5Tp1aFYoJGXz8i+6NHx8VqOdk1YcLVixdu16lRVVDYmILletURYmDn5WqzU3\n/2LDwsJyba6sCf7zLBVFCf4ig79Co9EY6CJTstHXaDRmp7uIREREBMMIedg9R+TORuCD0X8X\nLlwIxLCO5MPD1p2a3qqoiPTqUc0a1XHHin82nT3cNMIsIp3K/Vn+0fXzTsY3qxolIq+37XNc\nKb/p+B+NoywiIvLqiqF1HpjZ++UJD4wpG56FAeMObBr6xf7XH6goIqJOe69/nScXLnrs6xeX\ndyrlz3TxJ16Onbt9zcC6fr1VNfXxTi+7Itr+cWhV5RCjiLw4skuxwq3GPvrtU9u6bRj5P525\nxJ8715a8+vytyQWK51v43SKRDiLiSDowfN3pEvd+vu7TB92DPRjWtNN7W764kPRIAWuGM/se\nPLN8BZepr/9mtFX+9cTO2pFmEbHP2VOrcO1+K+ytp21cM7xlFia7tSQkJNjt9kDPotfrIyMj\nRSQ2NjZA/9/KPoPBEBEREaBPjRxhsVhCQ0NVVY2JicnrWryyWq0mk8k1dmiWRwj0yeZhYWFm\nszk1NfXy5cuBnSgbfVNTU7M5+4ULF7IZFnJkhDzsniMCuhHcnzkicunSJafT6W21vGU0GvPl\nyxfMnzk5wmir7A5hImLJ3yFMr7NVn+0OYSJSoElzkfVJdpeIOBJ3v7TnYtUXVl+LWSIi7cfP\nkZktl715YMz0+pkdUERCi/S7mupERDE8PuvLgYsr/Th+o3Tq5dd0ivnDp2v7+U7jT81aeym5\n2Ttz3KlORCz5W654842/1GgR6fLT/o6qOf+1p6qqroQUVVWdiVdL01lNisTu/WL7iTb1SoSJ\nSONpW85P83PmDAbPLF/BbvXF5IJNZ7lTnYgYw6rOaljo3g0n3xzUNGuTAQCAW4jOEJX2pUER\nc4FIz0tFZ/T8nHxxtVNV/5rRQJlx4yBxf8VlYUARiazR5bqVLeU75Ld8+++PIr38mc4UWrug\n0d9Hp14+uEFEmrYqlHZh86eebS4iIraI/Bd/++6D7zbvPnDo2PGje3f9eSo2xXLtcK3eXOL7\nVx7vOPrjBqU+LVW9YZNGjVq0uqdrl7b5/bs6xPfgmeUr2MU5XEUrhaddElEjXDacLG8JllMK\nAABAUNCZRKTGiHc9B+Q8zOH+Hja7wc2xyKDI1Rux+TGdogvxfy5XiktETF7O6Vw+9O6uszYU\nq9PqvrsadWx679DJtU71azPw3H8rtBjxwbknXlyx4uuNm3/asub9TxbPeuH5Riv+3tAmzQFF\nD9V13anCGQ6eKRlFtOuTruLHuYcAAOB2Y8nfXq8MccRWuueeJp6FjqR9y1f9WbiWLWtjXvx7\nhUgbz0tnytGvYpLzNb47ENPlq1hXZM2WXy9IqXyehetHPvtRTOSiWZ0embWhRPuFx77u52l6\nL01f+5X9f+yOjap1R7d+w7r1GyYie1e/VLX9+MFjd+x5s7G79rRz/bv9oufn1PiffQ+eWf4e\nogQAAPDGYCk/sWr+gx/1Wnf2v5PDPh1wf/fu3Y9nNWtcOb1g9DeHr71yfjLs/itO1/3TmgZi\nunylXqwVavrluWFHkq+GsNS4bT3nLP7614KOxH1OVc1f+w7Pyolnts44FS9y9cBbwr9vNmrU\n6OFX/3sKV+l69UXEkeAQEZtel3zxmwvXThxMjvm5//pTnjUzHDyz+FIVAADkgCHfLlhcsUe7\nctUf6Nbpjgr5/16/7KM1B2o88dHjBbN4xM5cwPJqp6p/93iyfrmwHRv+9+WmoyXueWl+40KB\nmE7Rh6/8uH+FB+bUKN+y92P3FDbGfrl44RlnyPzPn7AVsLSO6r9heseBxmF3FLcd3v3z2wtX\nlStsST3xx9wlnz3VvUt46UmtC7y17qUW7Q/3blStrCv26Iq339UboyZOrSMinR6vOGnKb7Va\n9RzxWCv72X3vz5zzb7RJTl69XNJWoJvvwTP7RjIIdhe2vztp0g+el6d+PicikyZNumG1CRMm\nZHZiAACgJaElH961K3zkyFdWfvHOilRT2YpVJyxePfape7M8YMPZW3seePOND79c8+nFsKKV\nnhy7eNbEpzznhOX4dKXun7X328ovTH3jw3kvpSih1Rre98GU2Y9VjBCRFTu+GtBvzIp5Ez4y\nFqp7R5PF2w83Snq7fpuJw58Z8FDXB0NM4av+Wjty8ISVq5esWZJgjSxSt/mjn094rXPxUBGp\nM2njG4l95i1fN/zZT+yqWqxpzx+mn2/WZPXVWXUW34Nn9l0oqur1WJ//t4X0McitKy4ujtud\nuHG7kxzB7U7+mygbzxhVXnpdHTcsO7PHDx+f/YecZn+EAn/vz3L389UrZae7iKh3Nk0Z+Vx2\nRsiRjeCtidudZE10dHRelwBfXCmXT553lCyeP6Cz+Dpit3HjxoDODQAAcJvQmfOVLB7wWXwF\nu5YttX8XYgAAoG1Hv+xY58ktPlYwh7c8e3RFrtUTUFw8AQAAtKz0A19feiCvi8gt3O4EAABA\nIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADTCV7BrVav6Uz+ecf9cpUqVycfjc6UkAAAAZIWv\n252c/ufAwamLfxp/j1En+/bt2/XbL7+cCUt3zYYNGwamPAAAAPjLV7B7c2CzVtMmNP/u6nNg\nl3dps9zLmpp8pBgAALetwD1GkkefBZSvYHfXa+sPd938++GzTlXt1q1b2znvPlnIlmuVAQCA\nPJTNxwGnK9DPvEYGT54oU69FmXoiIp9//vk9Dz/8SOGQ3CgKAAAAmefvI8U+++wzEUk8tfPz\nlWv2HD6d6DQUKVutbecud5QIDWR5AAAA8FcmnhW7fHy3Hi//L8X13+l0Y4Y803XMkmWTHwpA\nYQAAAMgcf4Pdkc96dHlpWYm7nnp9dL9mtcrblJR//tq6aMoLb7/UxVT7yEcPlg5kkQCAHGZp\n90h2up/PqToA5Ch/g93rQ1aFFnti39rFNp3iXlLvrofuaNnOVarw/wbNkAfnBaxCAAAA+MXf\nJ08sPZ9Ysd9gT6pzU3S2wQMrJZ3/NACFAQAAIHP8DXahOl3yv8k3L0/+N1nRc/0EAABA3vM3\n2A2pEP7Ph/23X0pJuzA17o+Bbx8ILz84AIUBAADkkvxG/VMHL+V1FTnA33Psen8+eUK1QU1L\n13pyYO+mNctbJOnQX1vff+PdA4mmuZ/1DmiJAAAA8Ie/wS6iUv89awyP9R+9cOqohdcW5q/U\nYv78j56pHBGg4gAAAOA/f7+KFZHid/XbuPf8ib2/fff1ypVff/fbnuPn92165u6SgSsOAADc\nPuxXdo94tF3FYhG2iEJ3dxv21xW7e3nSua3PPtCicESowWwrU7351M/2uZcf/W5hh/pV84eY\no4uVvf+ZVy87VRERNUVRlJdPxHuGLWo2uL9m9TaOlmTiBsUiIqIUr1yveOWAlAIAAG5famrf\nOk2/Dm2/+L1vChvOzR3w5J0NJWb36yIyqmmH5fkfeW/V9GJWx6ZPRrzQvUH3+y4VS91as+OA\n5i8u/HZhvcTj23p2f6595ft+GlLNxwzpjlPGos+td5gbMhvsAAAAct7FvcM/PJy68eL7LcJN\nIlJz3YWOPT45k+oqYtKV7vfiO08M6lDAKiKVy40eMrvjjoTUqPjv4p2up/v3aFTEJnfUWbu8\nyEFblO8p0h2njMWaC+8u1xDsAABA3ju5aqslsq071YlISNG+Gzb0df885IVnN6xaPu3v/UeP\nHt750zfuhaHFn3+s/nsPli7Tsl3bZk2btmnX+b7qhX1Pke44GpOJc+wAAAACxJXiUnSWm5c7\nU050rFD8kcmfxumjmnd8bO5nS9zLdYboj349+df69zrVL753/YdtahdvN2pNuiMnu1Qf42gM\nR+wAAEDeK9axZvJLy7dfsdcLNYpI4r8flas94r09R+sdH7r6WPKZ5K8KGXUiknjuaiD7d8vM\nV75Mnf36qCpN2w8W2bOwSZ3hI+TVHe7Wi3aX+4fEc59dcrhE5NK+9MfRGD+P2LlSUlLsamBL\nAQAAt63o2vPuK+Tq0Lrf1xt+/WPL6v5tn08O7XRvpNkcVV91pb6+dOOxk0e2fv9Bt1YjRWTP\noXOGgvFzZrzYc8r7P+/465eNK16Zvz+8UlcREcXcKJ95ad+pv+8/9te21U/e/YxOUUTE2zjO\nPH3XOc6vYKc64yNs1jb/OxToagAAwO1J0Ycu+2v9w8VODH60zZ0PPH2sWp+N2+eJSFjx4d9N\n679q9COVqzV54fU1/Zfv7lu/xKRm1Y8WGb16xsA/3x3Zon7djj1eOF+7z8aNw91DrfphXuVz\n/2terWzNJu1P1p/8SAGrj3F2Xrupijb49VWsog8fWiX/h+/+Jo+UC3RBAADg9mTO32De8rXz\nblp+z/D5+4fP97y899fjb7l/emHevS/cvLoUaNh33V99VVfSvxfVwtE2kQEZjCNy0a6RI3f+\nXjwx7sdva54YNGDuypgUjbxzAACgYYrOWjjaltdV5DZ/L57o+PAYV6GSbw554M3nLYWKFLAY\nr0uER44cCUBtAAAAyAR/g53FYhEp2qFD0YBWAwAAgCzzN9h99dVXAa0DwK0ibPrk7HSPHz4+\npyoBANwgc/ex279u2affbzt+7mKL1xZ2M2795XTNltULBqgyAAAAZIr/wU5d0LvZgPe3ul/Y\nxs3tcGXuXXW+btFn3tpFAwxKgMoDAACAv/y9KvbQkgcHvL/17gGz/zx4yr0kssK0qf0ab1o8\nsNPCfQErDwAAAP7y94jdlKFr8lcZtfaNwf/1tFUetXBL6tbo1ya+JM9q87kcAADctjgj9lbk\n7xG7zy8klXvi0ZuXP9CzbHIM11UAAADkPX+P2JU06+MPXr55+aXdcXoz90ABAEBrCvy9P8fH\nPF+9Uo6PibT8PWI3umHBfz7u+fOF5LQLE0+v773scHSdkQEoDAAAAJnjb7B7cNlbJZXjLcvU\nfnrYZBHZvfTdl4Y/UbXCPcddReZ99nAgKwQAAIBf/A121gLtd/y56qH6urdnThSRjWOHTpjx\ncVijrl/u2PVQkZAAFggAAAD/ZOIGxfkqtPtkfbt3zh/Zfei0Q28tXqFa8Qhz4CoDAABApmTu\nyRMiYi1Qpl6BMoEoBQAAANmRmWDnSvr2g7mffrVu35GzDkNIqUq1Ojzcu0+nhjx1AgAAIBj4\ne46dM/Xkk41Kd3hy1JKVm07Fptovnfju07f63d+oSscx8U41oCUCAADAH/4Gu02D2r7327k7\nn5t3JPbK6SP7/v7n5JXLR98YfOf+b6a2nvh7QEsEAADIEYn/vqMoytEUZ14XEij+BrsxSw9H\nVhq7Yc7AUmFG9xJDSMkBszeMr5J/1/zRASsPAAAA/vI32O1JtJd59KGblz/Uq2xq/C85WhIA\nALidOe2uPOzuiyMxNlBD5xB/g939UdYLvxy7efmJbRfM+ZrnaEkAAOB2VNRsGLvm3TqFw8wG\nY+HyDd/69fz2D4ZXLhJpDo1u+MCQC9fymiv19CsDutSqUNwSGlWjZdf3t57NVHcROffze61r\nl7aaLEUrNZz44e++hxWR/Eb9vOMnhna9q1iZnrm1MbLI32A3ZfFTp7/v8erXe9MuPLB6erev\nj9d8bnIACgMAALedmQ/MeObdtQf+3tIl7HD/5jUeXKq+9/2vm5ZN3PvVvG7Lj7jXGdOy7vRN\nyog5H21d98UzjeWpFuXfPhjnf3cR6dRxasvBM9evW/lcC9PkJ+qP2fav72FF5PM+7cPbD9u0\n7a1c3BhZ4et2J4MGDUr78s7iuhfvq7qobvP6VSrkU+IP7vt98/bDelOhTpFbReoGuE4AAKB9\ndWd/8XT7SiIydkGDBU2/+2b5qzVsBqlZYUSJsZ/+eF66lbtyatZrv5zfcPHjlhFmEanbsKV9\nZdTk/j/2WdPRn+7uWRouXjOuWzkRadz8nstboxb1WfriDy4fw4rIuTJzxvdulRebJHN8BbuF\nCxfeuLbBcHLXtpO7tnleiitmwtDnRz83MFAFAgCA20ahptHuH4wRFr25ZA3b1aASZdCpLlVE\nYvd9p6quOyMtaXtFpO4X6ehPd7eB9xb3/NyjX4WZ4/8Xuy/Ux7AiUv6Jqjn3LgPIV7Cz2+25\nVgcAAMD10jlhzBhu1Rki4mJPpn0+gqIz+dn95gZTfpOiM2Y4bL786U4RdPw9xw4AACDPhZft\nqzrjFp22h1xlm3D/Pf0+PpypQeavPe35+dMZe8MrPp4jwwaDTDxSLOnMvi2/74lJSOcw3iOP\nPJJzJQEAAKTPkr/DrDbFXmzWKXTui40rRq55Z9icLae+/ax0pgb5qmeb15Jn3V0+ZPNHL0/8\n6/Lsv++35I/M/rDBwN9gd3T58Du6z7zo5c4wBDsAAJA7Bn39e+Jz/ab2f/hsirlynbs+2ryi\nTaTZ/+56U5HvZ3YdOanvhBPJ5WvfMf2Lv5+rEpn9YYOEv8Fu0NPzL+tLTHjjlbuqljQoGa8P\nAACQKadTHJ6fo6ostyf91/TswYvPXvtZZyz44psrXnwzK91thZ5ypDwlIr8988oN3b0NKyIX\n7bfMI8j8DXbrY1NqTVo5sV+tLMyhOi59uXjR6q1/xiTripSo0OnxZ+6pU1hERFwbly74avMf\nJ+L1las3eGJQ77I2Tz0+msSPdbw1+TMsAADALcnfiyea5jNZCloyXi89P0wdtmTTv516P/fa\nSyNblUtZMHHAihNXROTw8rGzlm1r9GDfCUN6hh5aN+b5RZ4ven00iR/reGvyZ1gAAIBblL/B\nbtbk1tuHP7n9XFLGq17PmXJi4e8Xmo8bf1+rxhUq13xowNQ2EfoVC/4WNXXmsr3luk/u2rpx\ntTuaD542MOHM90tOJYiIryaPLHT3Z1gAAIBblr/BrtrAFX0L721csvy9D/ToexMfHZ3JR0uV\nKdO+bL5rC5Q64WZ77JWUuM3Hk51t2hRzLzVHNKsTavp941kR8dHkkYXu/gwLAABw6/L3DLOf\nRjV/Y/8lkUvrVn9x88UTixcv9tbRFN589uzmnpf2K/vePX2lVO9KqQmfiUhVm9HTVMVm+G5X\nnPSQ1IRd3po8fKzjrSn1zgyGPX369M8//+xprVevXv78+X1skxyh013N1maz2WAI0hP+3EVa\nLFn8Lj4XGI1Xd2swF2kwGHQ6XXa+/Q/0u9Pr9SKi0+kCOlE2B9fpdNk8hzn77y7PRwiG3/OA\nboS0H4wuV5CeMuP+ewmGfeGWnJyc1yUgKPibJPq/sT20RJc1Py5qVCrrWefY9m/nznnXXrbd\nmHuLO44liEiU4b9DhtFGveNKsoi4Urw2efhYx1tThsPu379/6tSpnpcLFiwoWbJklt9sZlmt\n1lybK2tCQ0PzuoQMKIoS/EU6Ml7Fq9x5dwaDwfdEKdkbPzQ0NDsjUk14VAAAIABJREFUGAyG\nbAa7bBaQUyPkYfcckTsbwWazZW+SgAuGfeFGsIObX8FOdSX8nehovuiVLKe61Ev73503d/WO\niy27PPvyo60sihJvsorIJYcrVK93rxNjd+ojTCKi897k4WMdb00ZDms0GvPl83xlLHq9XlX/\ne65c4CiKIiK5M1eWKYoS/BXKrbAZs9M90O/OU15AJ8rzfZT9AvJ8hDzfhjlSg+8RbpW/6CCv\nELchv4KdohhKmfWXdp6XHuWzMEf8sXVDh72hr9Fu2uKelaKvHrU2htQQ2bw/yVHCfDVmHUxy\nhDeL8N3kkYXuGQ7brFmz9evXe17GxcXFxMRk4f1mil6vj4yMdE/ncGTnaE4AGQyGiIiIXNga\nWWaxWEJDQ1VVDeYirVaryZStRw0G+t2FhYWZzebU1NTLly/7Wi17s8TExGRnhNTU1OzNn90C\ncmqEPOyeIwK6EdyfOSISGxvrdAbp/cPcxwKCYV8EzvnqlfK6BGSaf1/FKuav5z1ep3+H2S02\nD76veqaOOaiuxJdHLjDf/dzcZ+5K29EScVdR08LvfzrXumMJEbEn7Pw1PvXB1oV9N2WnuyWi\nZIbDAgAAEYmOjs7rEpAV/p5j98wHB4sZ4p/vVGNURKECocYbWk+cOOGtY+K5JXsS7b1r2H7f\nvv2/Wa3la1eLGNal8vD3J64tMqJapH3V/Bm2Inf3LB4qIqKYvDUd/vzjTQmhvXt19rGOjyav\nXQD/hE2fnK3+U2bkUCEAAKTD32AXHR0dfU/H2pmfIP6foyLy3msvp12Yr8Toj+c3Kv/IlP4p\ns5fOGh+TrJSr1XLK5L6e6xq8NZ1av/qrCwV79+rsYx0fTT66ALnD0i7rD1Y+n4N1AAC0yN9g\n9+WXX2ZtgsLNXl7VzEubom/Ta2ibXploar5gycGBr/hex1eTjy4AAAC3OH+DXVxcnI/W8PDw\nnCgmY2e3fHOwStvcmQsAAODW4m+wc1+g5E2uXe8dVrLOlCZFc2cuAACAW4u/wW7ixInXvVYd\npw/vWbFs5UWl2MQ3p6bfJwBCSpDqAAAA0udvsJswYcLNC2dP/+Xuii1nz/l9TO8eN7cCAAAg\nN2XrqlBroYaLJ9e+8OesTXHZfLQMAAAAsiu7t/uwFbcpir6S7cY72wEAACCXZSvYueznZ43b\naQytU9jI/eAAAADymL/n2DVu3PimZa4zB3cdi0muN/aNnK0JAIJcdm40LdxrGkDA+Bvs0qMr\nUaNV57sfmzamYY6VAwAAgKzyN9ht27YtoHUAAAAgmzg3DgAAQCN8HbHbv3+/n6NUqlQpJ4oB\nAABA1vkKdpUrV/ZzlFx7pBgAAAC88RXsbnyM2PVc9piPZi08kmjX6UNzuCgAAABknq9gl+5j\nxNwO/PDWU31eP5JoL9nssbff4XYnAAAAeS/TF0+kxu4e26NJpXue/uVioTGL1x758aM2FcMD\nURkAAAAyJVP3sXOte3tcv8HTjyQ5mvQY+/aCcVXymQJVFwAAADLJ32AXt/+HgX36fPzTibDS\nLRYtfqdv6/IBLQsAAACZlfFXsarj0rvjHiterd0n2y49Oubtowc3kuoAAACCUAZH7A6te/up\nPi9sOhpfouljy9+Z17ZSRO6UBQAAgMzyFezGP958ypItuv+3d+9xdk73/sDXnj177jOZmEiR\nRCtxCXGN31GUEpKfUnpUaYRWokpbl1PUpW2cICiVKOXUodSl5Fe0aKlb69Y0h3McWrQIWiVu\nkUgkJsncZ//+2DoiMpOZ2TPz7Fl5v//wynNbz3fWrGf7zHqevXdx3XEXXnPesRPToW3JkiVr\n3bOurq5/ygP6WPWsmV1sbcrt0/kO9afP6Nt6AOhDXQW7826eF0Joa3n3p987/Kff66oVH1AM\nA6PrWLZOYhlA3LoKdieeeOKA1QEAQJ66CnZXXHHFgNUBAECeevwBxQAAFCbBDgAgEoIdAEAk\nevSVYgDQZ7p4l3fuk3cqOj/WW7xhrczYAQBEQrADAIiEYAcAEAnBDgAgEoIdAEAkBDsAgEgI\ndgAAkRDsAAAiIdgBAERCsAMAiIRgBwAQCcEOACASgh0AQCQEOwCASAh2AACREOwAACIh2AEA\nREKwAwCIhGAHABAJwQ4AIBKCHQBAJAQ7AIBIFCddAACDUtn+k/M5fHFf1QGsxowdAEAkBDsA\ngEi4FQs9kOe9p+a+qgMA1saMHQBAJAQ7AIBICHYAAJEQ7AAAIiHYAQBEQrADAIiEjzsB1ju+\nMgGIlWAHDLR8clVTH9YBEB23YgEAImHGDhhk3EgF6IwZOwCASAh2AACREOwAACLhGbtOZTKZ\n4uJ+75+iog+ydWlpaSaT6e/T9U6uyPLy8qQL6VRH1xVykWG1X3fv5P/TRdBCOp1OtoBCaKEQ\nxrlOyA3FxMvo0NDQkHQJFATBrlPpdDrP/w13RyqVyv0jk8lks9n+Pl3v5IosKSlJupBO5X5T\nqVSqkIsMeQe7kpKS9vwKKJAW8jk8/6sy/0GSeAuFMM77pBPyGUuJd0IqlSqo1xzBjhzBrlON\njY0tLS39fZZ0Oj106NAQwooVK1pbW/v7dL1TXFxcW1u7fPnypAvpVFlZWVVVVTabLeQiQwh5\n/oqXL19enV8BBdJCPofnf1XmP0gSb6EQxnmfdEI+YynxTshkMjU1NYmXAWvwjB0AQCQEOwCA\nSAh2AACREOwAACIh2AEAREKwAwCIhGAHABAJwQ4AIBKCHQBAJAQ7AIBICHYAAJEQ7AAAIiHY\nAQBEQrADAIiEYAcAEAnBDgAgEsVJFwAAvVE9a2Y+h9efPqOvKoHCYcYOACASgh0AQCTcigV6\npmz/yfkcvriv6gDgY8zYAQBEQrADAIiEYAcAEAnBDgAgEoIdAEAkBDsAgEgIdgAAkRDsAAAi\nIdgBAERCsAMAiISvFIPBxNd5AdAFM3YAAJEQ7AAAIiHYAQBEQrADAIiEYAcAEAnBDgAgEoId\nAEAkBDsAgEgIdgAAkRDsAAAiIdgBAERCsAMAiIRgBwAQCcEOACASgh0AQCQEOwCASAh2AACR\nEOwAACIh2AEAREKwAwCIRHHSBQADqmz/yfkcvriv6gCgH5ixAwCIhGAHABAJt2IBSEY+DwZ4\nKgDWyowdAEAkBDsAgEgIdgAAkRDsAAAiIdgBAETCu2IBWE9Vz5qZ1/EX/biPCoE+Y8YOACAS\ngh0AQCTcimU9kudtl/rTZ/RVJQDQH8zYAQBEQrADAIiEYAcAEIkBfcbuhm9NLZt51eEblv9z\nRfujt1x599w/vV6fHrvtLtNOOnp0RXE3NoU8Du9OswAAg9KAzdhlX/7jtXe+taw1m+1Y9crt\nZ1166+O7HnLs2ScfVfX3h6afcnV7Nzblc3h3mgUAGKQGYr5q0eOXnXnFvCUrmj+yNtv8o1tf\nGDNl9mETx4QQNr84ddhRF895c9pXR1R2tSmfwzfJrLtZAIBBayBm7GrHHTZ95kWzf3jm6iub\nls9d0Ng2adKI3GJp7R47VZU89ejCrjflc3h3mgUAGLwGYsaupGbE5jWhrbls9ZXNK58NIWxT\nkelYs3VF8f3PLg9HdrUpn8Ob915Hs88999xNN93UsXXatGmbbbZZPj94d6RSqdw/Kioqsqvd\npy4oRUVFIYTq6uqkC+lUOp0OIaRSqX4tMv/Gc3UmWEAELRQX5/uqlfiPkH8LhXAxRtAJ+bfQ\n3685PVJfX590CRSExN460N60MoRQV/zhlOGwTLp1RWPXm/I5fJ3NLlq06MEHH+xYPOSQQ0pL\nS/P9ObutpKRkwM7VOwPZG73WdZFN/dl4d+QicoIFRNBCnn2YfwGF0EIhXIyF0An5X9F5thAK\n43eRI9iRk1iwKyopDyG819pe9c85jCUtbenakq435XP4OpsdPnz4xIkTOxZramqamvK/6tch\nlUrlIl1zc3Mhz9hlMpkB6I1eS6fTuYmcfi0y/8bb2/N6u07+BUTQQp59mH8BhdBCIVyMEXRC\nn3RjIfwuYHWJBbtM5XYhzH2xoXVU6Qcx6+WG1iF71Ha9KZ/D19nsuHHjLrrooo7F5cuXD8Af\nQOl0OhfsVq1a1dra2t+n653i4uLa2tpC/nOwrKysqqoqm812XWSet0zy74G2trZkC4ighfwv\nk8R/hPxbKISLsRA6If8rOs8W1vmaAwMvsQ8oLqudsElJ+oF5i3KLLSuffqK+efzEjbrelM/h\n3WkWAGDwSu6bJ1Ilpx069m83nPPgUy++/cpfr5txScXG+x41sqrrTa/86ubrb/x1Lw/v4hAA\ngMEvye9d2Hzy+cc3XXbLpTOWNKbG7LDX+TOPLVrXpjcfvu/ud4cfPfXg3h3exSEAAIPdwAW7\ndMnIu+666yOrUulJU78zaera9u5k055Xznn5xAt7fXhXhwAADHKDbMZq4X/d8/LW/zfpKgAA\nClGSt2J7oXrTnc7ffZOkqwAAKESDLNhVjpLqAADWbpDdigUAoDOCHQBAJAQ7AIBICHYAAJEQ\n7AAAIiHYAQBEQrADAIiEYAcAEAnBDgAgEoIdAEAkBDsAgEgIdgAAkShOugAYOGX7T87n8MV9\nVQcA9A/BDoBByZ9q8HFuxQIAREKwAwCIhGAHABAJwQ4AIBKCHQBAJAQ7AIBICHYAAJEQ7AAA\nIiHYAQBEQrADAIiEYAcAEAnBDgAgEoIdAEAkBDsAgEgIdgAAkRDsAAAiIdgBAERCsAMAiERx\n0gUAwGBVPWtmPofXnz6jryqBHDN2AACREOwAACIh2AEAREKwAwCIhGAHABAJwQ4AIBKCHQBA\nJAQ7AIBICHYAAJEQ7AAAIiHYAQBEQrADAIiEYAcAEAnBDgAgEoIdAEAkipMuAACSUbb/5HwO\nb++rOqDvmLEDAIiEYAcAEAnBDgAgEoIdAEAkBDsAgEgIdgAAkRDsAAAiIdgBAERCsAMAiIRg\nBwAQCcEOACASgh0AQCQEOwCASAh2AACREOwAACJRnHQBhausrKysrKy/z5JKpXL/qKioyGaz\n/X263skVWV1dnXQhnUqn0yGEVCrVr0Xm33iuzgQLiKCF4uJ8X7US/xHyb6EQLsYIOiH/Fjpe\nwBOsoUN9fX1fNcWgJth1qq2tbQCSVlFRUcfp2tvb+/t0vZMrsrW1NelCOpV7ec1ms/1aZP6N\n5zmi8i8gghbyvyoT/xHyb6EQLsYIOiHxK7pPaoA1CHadamlpaWlp6e+zpNPp8vLyEEJTU1PB\nXuHFxcXl5eUNDQ1JF9KpbDZbUlISQujXIvNvPM/snn8BEbTQ1taWbAGF0EIhXIwRdEIc3Qhr\n8IwdAEAkzNgNkOpZMzvb1BRCCKG882PrT5/R5/UAAPExYwcAEAnBDgAgEoIdAEAkBDsAgEgI\ndgAAkRDsAAAiIdgBAERCsAMAiIRgBwAQCcEOACASgh0AQCQEOwCASAh2AACREOwAACJRnHQB\nADBYle0/OZ/DF/dVHfBPZuwAACIh2AEAREKwAwCIhGfsGDSqZ83sYmtTbp/Od6g/fUbf1gMA\nhcaMHQBAJAQ7AIBICHYAAJEQ7AAAIiHYAQBEQrADAIiEYAcAEAnBDgAgEj6geHDo+rN518ln\n8wLA+sCMHQBAJAQ7AIBIuBXLoFG2/+R8Dl/cV3UAQKEyYwcAEAnBDgAgEoIdAEAkBDsAgEh4\n88QAyefBf0/9AwDdYcYOACASgh0AQCQEOwCASAh2AACREOwAACIh2AEAREKwAwCIhGAHABAJ\nwQ4AIBKCHQBAJHyl2PqietbMvI7/4eV9VAgA0F/M2AEAREKwAwCIhGAHABAJz9gNDmX7T87n\n8MV9VQcAUMDM2AEAREKwAwCIhGAHABAJwQ4AIBKCHQBAJLwrlu7K87sr6k+fkU8L9afPyOfs\nALA+MGMHABAJwQ4AIBJuxa4v8vyI42xf1QEA9BszdgAAkTBjx8DJZ9bQt6IBwDqZsQMAiIQZ\nO7orz6f0TLkBQH8zYwcAEIn1bcau/dFbrrx77p9er0+P3XaXaScdPbpifesBACBa69eM3Su3\nn3XprY/vesixZ598VNXfH5p+ytXtSZcEANBX1qdgl23+0a0vjJky87CJu43bec9vX3ziyrcf\nmPPmyqTLAgDoG+tRsGtaPndBY9ukSSNyi6W1e+xUVfLUowuTrQoAoK+sR0+YNa98NoSwTUWm\nY83WFcX3P7s8HPnB4rx582bM+PCb5mfNmjV+/PiBrXHt6urqEm8hf3nWUAidkH8LmUxm3Tv1\nZwERtFBSUpJsAYXQQgRXdP4tJF5ACCGVSiVeQ4clS5b0VVMMautRsGtvWhlCqCv+cJJyWCbd\nuqKxY7GlpeX999/vWGxra8v/ou0T+ZdRCD9InjUUQick3o2F8CMUQguJF5B4C4n3YZ/UkHgn\nxNGNsIZUNru+fAto/Ruzjzx+7k9+eeeo0nRuza1fP/ze2tNunP1/cosLFix45JFHOvb/7Gc/\nO3z48P6uqqioqLy8PITQ0NDQ3l6g7+XIFblyZeE+j5jJZEpKSrLZ7KpVq5KupVOZTCadTjc2\nNq5714SUlpYWFxe3tbUVcpFlZWVtbW0tLS1JF9KpioqKVCrV3NxcyEVWVlYW/mtOKOwXxnQ6\nXVpaWjivOQ0NDcOGDUu6CpK3Hs3YZSq3C2Huiw2tHcHu5YbWIXvUduyw6aabTp06tWNx+fLl\nDQ0N/V1VOp3OvX41NTW1trb29+l6p7i4uLy8fAB6o9ey2WzuDl0hFxlCSKVShVxhcXFxLtgV\ncpGZTKalpaWQK6yoqAghFHiRlZWVhf+aE0JobGxsa2tLupy1y2QypaWlhfxbZv20Hr15oqx2\nwiYl6QfmLcottqx8+on65vETN0q2KgCAvrIeBbuQKjnt0LF/u+GcB5968e1X/nrdjEsqNt73\nqJFVSZcFANA31qNbsSGEzSeff3zTZbdcOmNJY2rMDnudP/PY9SnYAgCRW7+CXUilJ039zqSp\n694RAGDQMWMFABAJwQ4AIBKCHQBAJAQ7AIBICHYAAJEQ7AAAIiHYAQBEQrADAIiEYAcAEAnB\nDgAgEoIdAEAkBDsAgEgIdgAAkRDsAAAiIdgBAERCsAMAiIRgBwAQCcEOACASgh0AQCQEOwCA\nSAh2AACREOwAACIh2AEAREKwAwCIhGAHABAJwQ4AIBKCHQBAJAS7hC1YsGDChAkTJkyYP39+\n0rV0qrW1dcmSJUlX0ZXf/OY3EyZMOOCAA5IupCuNjY3vv/9+0lV05eyzz54wYcL06dOTLqQr\n9fX1jY2NSVfRlYMOOmjChAl33HFH0oV0ZcmSJa2trUlX0amXXnop98L46quvJl1Lp1paWpYu\nXZp0FbCm4qQLKFxDhgwZgLOsWLGivr4+hFBdXT1s2LABOGOUMplMfX19W1ubPsxHe3t7fX19\ne3u7bszHypUr6+vrM5mMbuy1xYsX514YhwwZohuhR8zYAQBEQrADAIiEW7EJq6iomDhxYgih\npqYm6VoGsVGjRk2cOLG0tDTpQga37bffvqioaJtttkm6kMFt7733bmho2HTTTZMuZBCrqanJ\nvTBWVlYmXQsMMqlsNpt0DQAA9AG3YgEAIiHYAQBEwjN2yWp/9JYr7577p9fr02O33WXaSUeP\nrvAb6bF3Hp9+7IV/WX3N166/7eC6sqTqGXRu+NbUsplXHb5h+WrrjMweW6MbDcseyba+d+c1\nV9/32DNLGos2HrXFF776zf122iiEYChCT7lCkvTK7WddeutrXznhxK8Nbb3n6p9MP6V5ztUn\nmETtqWVPLyuvO+jbx47rWPPJ6kyC9Qwq2Zf/+LM731p22EeftTUye2gt3WhY9sjvfnDanOdr\nph33b2M3qXz2oV9cec4JDf9x48GjqgxF6CnBLjnZ5h/d+sKYKbMPmzgmhLD5xanDjrp4zpvT\nvjrCu8B6ZtHz79dus/vuu49b966sZtHjl515xbwlK5rX3GBk9kRn3WhYdl9b0+tXPfXuXj+Y\nfdC4oSGELcZu9/YTk3995V8P/sF4QxF6yl8+iWlaPndBY9ukSSNyi6W1e+xUVfLUowuTrWow\nevr9pqE71bY1vL9w0TLv8e6+2nGHTZ950ewfnrnGeiOzRzrrRsOy+9oaX/3kZpsdMLrjI59S\nOw0pbVm2wlCEXjBjl5jmlc+GELap+PDuzNYVxfc/uzwcmVxNg9OfV7Rk513+5Svmt2SzxZUb\n7nfEt79x0PZJFzUIlNSM2LwmtDWv+dSXkdkjnXWjYdl9JUP2vOyyPTsWW1bMv+6tFZ88eqvm\nlb8MhiL0kGCXmPamlSGEuuIPJ02HZdKtKwr6280LUFvzmyvSmU8N2/2Hc2bWZuv/597rZl1z\nVukWP582tjbp0gYrIzN/hmWvvfbkvZf/+LqW0ftP/9zI1tcMRegxwS4xRSXlIYT3Wtur0unc\nmiUtbenakkSLGnzSJSNuu+22fy6V7jn5jJfuf+rha/86bfYeSZY1mBmZ+TMse6H5vRevu+Ly\n+/68dK9Dv3XBEfuUpVL1hiL0nGfsEpOp3C6E8GJDa8ealxtah2zrD/p87fSJ8pb3FyddxSBm\nZPYHw7Jr9a89dOJx330m7HDxNdefeuS+ZalUMBShVwS7xJTVTtikJP3AvEW5xZaVTz9R3zx+\n4kbJVjXoLHvpJ8d8/YSFze3/XNH+h7dW1W6zZZI1DXJGZv4Myx7Jtq+64MwrS/f9tytnHLfV\nsA+fVjQUoRfcik1OquS0Q8eefsM5D258xrihLXf95JKKjfc9amRV0mUNMjWjJ9et+uaZ51x9\n4hH71KYanvr9zXNXVs/4uv+D5sHIzJth2SOrFs15flXL0dtVPPXkkx0ri8s333FcraEIPZXK\nZr0TPznZtt///LJbf//EksbUmB32+uapx25eKWr3WNN7z11/1Zz/eublxnT16C22Pfhrx+22\nqZf+7mprfuOLhx7/5Wtv+crwig/XGpk99PFuNCy7b+G86cdd/Jc1VtaM+v7NP9nVUISeEuwA\nACLhGTsAgEgIdgAAkRDsAAAiIdgBAERCsAMAiIRgBwAQCcEOACASgh0AQCQEOxhkXr7xs6lU\n6sgXl3580327bZJKpR5Z3jTwVa3VrWdNGbVh1bDNv9adnW/Zelj50Il9deolL3wp9VGVtRtu\nu8eB5133UFtfnQOg8PhuFqBfrFx4zeEX3PKpg0+bfejn1rrDov8565jzn/nenNt3rynppxpG\nHfj1yWNrQwgh2/beotf+eN+9M46556Z7Lnj2l98v81ctECPBDugXDYvvCSEce/mMaaOq17rD\nqoWP//a3Dx/d0o8zaKO/8t1Zk8d0LLa3LPrhlD2+f/v0Ay/7/IOn7tB/5wVIij9agXVob13W\ni/CVbW8PIZQWpfq8nl4rygw/8xeP7V5TOnfGkSvafE02ECHBDqL1zv/cduT+u21YW1VSOWTL\nf5k484ZHV996xqiamlFnrL7m6XN3TqVSrza1hRCu36pu6JhLm5Y98ZW9t6kq3aCzGNTZKX49\nbsPhO94dQjhtZHXlhod9/MAfbFa72cEPhxC+NKxi9TIaFj523Bc+U1dTUVk34tOfO+r3b6zs\n2LTitbknH77fphvWllZuMHanfc69+t72nvdJUWbYpV/bomXlcxe9Xp9b88JdPzl47/HDhlQW\nl5RvPGb7qWdcvrQ1G0J44crPpFKpK95csdrR7fsOLa/auFuPDAIkQrCDOC1+cvaWe0z55R+X\nfv7IE846aeonVzx19tETJv37H7rfQnvr0qk7fu6dUZN+cPmV5WubeOviFLv/9LZbr9w1hHDs\nzXf+5rbpHz92yo133DhjxxDCWbfddefNX8+tbGt6feK4fV8a+i8zZs0+5dDxf/7dzQfvPCWX\n3la+9esdt5545d0v7Tv52BmnH7f9kNfO+ebnd556Qw97JYQQRh+9Qwhh7h/eCSG8fs8J2x58\n0h/eGXL0SWeed9bpEzdv//msb+867d4QwugjzitKpa6++LmOA99/9YcPL2vc6ewzOmsZIHlZ\nYFB56YY9u76oH17WmM22f3l4RaZi67lvr8wd1day+Ds7DUsVlc1d3pRbc/rI6uqRp6/e8p/P\nGR9C+EdjazabvW7LDVKp1H5XPNV5Ies4xaKnDwohzH6jvrPj//HrfUIIt7+7Krf4i7F1IYRP\nn/toxw73TB4TQvjDsqZsNnvOuLpMxdaPvdvQsfXOU3cMIZz/92Vrbfzd5w8JIex1y98+vun9\nBReEEHb47pPZbPbGccOKyzZ9rbG1Y+spI6rL6w7K/fvkkdXlGxzQsemByWNSRaVP1jd33icA\nCTNjB4PS1l878bSP+dImlbmtDe/ecduiVVsde/2eG1Xk1hQVD5v+/6Zl2xvPfuCN7p4jVfrz\nb+zY2ca+OcUaJ0yX/+q7e3QsbnnQiBDCivb21lXPnff80rHfunG3urKOrQfM+HEI4db/fKkX\n5+n4z6HzXnznrec3LU3nNmTbVzZls9m2VbnF46Zv37D03p8tXJnbdPLdC+q2vXDnqkyvfjiA\ngeBdsTAo7XTGubO22mCNlffNm3P7WytDCI3v3R9CGH3UZqtvrRp1VAiz3/7dwnDY6O6coqRq\nx+GZTv/265NTfOyM40eWpDsWU8Uf3P9tXHpfWzb7l0t2SV2y5iHL/7K8p2dpXv5CCKFmq5oQ\nQkXtBkv/9/4b75/73Et/f23Bqy88+8yby5rKaj/Yc/SU84qO3/eKH88/5sKd333mjBdWtRxx\n2eRe/FwAA0awgyit5b0OqVRxCCHb2um7QbPtH9mUKqrs81N0LZUqW/uGopIQwnZnXDdrn03W\n2FI6pNM5xc68cuPTIYTP7vWJEMLt39n3sEsfGbHTPgdN2PXAz3zuOzN3ePO4SScu6mh8wskj\nq6762UXhwl8+eMpviks3vXzPjXp6OoCBJNhBhMqG7hfCz/4x59UwfnjHyhVv3BRC+MS+n1ht\nx498jMk7T67l2yzyPkUfKNvggHTq5NZlW+233+4dK1sb5t/bM4r3AAADRElEQVR+1zMb7VDR\no6ayrUtPu+alTOW23x1V3Vz/35MvfWTUAVe99tvjOna4/qP7H3vWDj/6xq9ufvNvpz62cOT+\nd9YVe3wFKGhepCBC5cO+dMiGFfOvPubxxY25NdnWpRceeW2qqHTGgaNyayrSRY1L73m35YPP\nDGlc8t/HP/xm356iO7LdmN0rLtv8nG02ePmmqQ8tXNWx8hcn/OuUKVMW9OQ1rL116Y+O+szc\n5U17zby5Kp1qXTW/LZvdYMedO3ZY9fZjl7xZv/pk5OjJF6RTqe9+46DFLW1HX7KOt60AJM6M\nHUSp6D/v/vfffWb63mN2nnrMFzeravjDHdc/8Px7+0x/aN/a0tweX/jqluee/7877HPUGV/Z\np2Xh/Bt+9ON3hpWEN1r78BRdy1RnQgg/veLapq13OeLwT3e988n3XnnNlkfuP2bbLx7+hZ23\n2OCvD9960+9f2m7aTV8d3tWM3T9+Mft7T+eemGtfvnjB3N/+5rl3GrY45ILfnrJDCKFiw8Mn\n1h3/yKwDT8yctvPIilee++9rr7przEZlza//6fI5vzxmyqGVRamSIZ89ZVT17Hvml9Xuc9bm\ntV2cC6AgJP22XKBnch93csT8JR/fdO+uG4cPPu4km81m35o35/BJu9TVlBeXVY8ZP+Hc6x9Z\nfef2tpX/ceqUrT65USaVCiGM+MxR8x7bP6z2cSdltfuus5guTrHOjztpXvH0geM/VZYu3nj7\nc7PZ7C/G1q1xxr/dslcI4Z6lH3zEybIX7//GwXttVFtVUrHB2B33OPua+1raOy0s93Enqyuv\n3mDr3Q4499rft66224oFD0793KdH1FXWbDR6789/5e7nli5+8uJPDa0oqdrwjaYPdpz/0z1C\nCDt873/X2RsAiUtlu3MjBIhXe9P7byxu3XTkmu+xJefJ7++4y0XP3rl41b/WdfLeDoCCIdgB\ndKq95d3d6kbMH3ri8tc+9lErAIXHM3YAa3f8Sd9Z9fIdT9Q3H3PHqUnXAtAtZuwA1m7c8Op/\ntA459MTLfj7z0KRrAegWwQ4AIBI+xw4AIBKCHQBAJAQ7AIBICHYAAJEQ7AAAIiHYAQBEQrAD\nAIiEYAcAEAnBDgAgEv8f6Rj93JyLdioAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "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\nWRylusrzm33kvgvpph/+pr2IlG71raqqjoRdFp1isjW88h94tWtUkKIYNl5M9lE5W6dinUmH\n9IpiCIpxZOj5J41KiEjfHWfVbAa7Go9szmLlVVXN+ojdcsn8iF2WY+5nsKv52JZ0C9ayGr1D\n57QfMSqKObRFujYX/30u98Euy1Xw9LDG4PSDWdliuDIsfm2f/m3q15d3W6nnCJYhqLJLVVV3\ncmWLwWCp4F2R7++pLCJd1hxVVfX3cfVFpMoDG68s6s9a+zUy6pVgN23xJM9p8ZLNp/voc0aZ\n7WtZjolnYJ/6J/3VGp6BrdB5rd9rCqAo4eYJv0z/9a/9aR04dDY+bumLnZIv7h7R6Z7M7smM\nP3hARIo1b5puuqKz9opOfSqey/7vv3any3HOokv/ZPmmc3aJyKXdl0Rk/LoPbq8afnjV3M7N\nb7KFlmjSttvwSTN+/CfWn87fVcKabkpk/dtEJPH4PyJisNaaVC0iJX77K4cviUj88TnLzyeF\nVxnfOszk5+BkKeXyLy5VtUR0NCjpZ1VtW0JEjuzK9m3FETcH4FFtKZe2iIjRVve6c3Mz5mmF\n1wn3MTc5bqNDVc0Rt6ebbglPPyUH/FyFqEZRmVXwc/v0Z1P3LS+20qDoexrYTM6kQ5+fTYo/\nMfeQ3RlRY7z3UdV1xrQSke0v/Soimz47IiJNnqnh/1r7OTJeY++fmBLZukqQ4dSWYWN/8uu2\nJ9/8HJNumQzspb3/+Lmmue8qgPzEA4pzSNFZ737+m0bTrNsubf7yXFLP6Os8OUwxKiIiGdKM\niEQaUyO1qjpExGCpOOKZ3td9o5JNiomIrULX7/ee/u27pd+sXLvppy2/bfp26/rlMyaN6jrm\ni6+nds+iqxk6oOhMIqLoUvvc66XGo+9Z/dGLO55/r/WOSXNFpNUb/X3XzKZMH7Sg6BURcadk\n/rwS9fqzDEEB2HT/W7FeRMKqPHjdubkZ87QU/fW2gCtUt11ElAxbiaL48dCNTAbHy89V0Jky\n/Q+en9unP5u6b3m0lY6uHdn7l1Pvbztba9enIlJzWGvvrKjaL5h1H5zbPsWt9ph17LKi6EbX\nSv3fgj9rrarxWbZJ+9IU1WL1rlUlVz5Yrf/Smd0fHH76u2hDbv9f7c+Y6DIZWNWdIn5/vgCK\nkoI+ZFjY+bwrVp1UIUxEXjhy9e62tOfCLhx4VkQiqs3IuGDrMLN4zk+5U4oZ9XpTcb/Pr6qq\n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\ndw9clwAAAJATvoLdXXfd5WcVVVUD0RkAAHDjcsTvGjd4xLKNP/+XYG7Woe/Md16uYzOKSNKZ\nLcMeHfPV+u3nktzlqt486IW3n+tVQ0QOr54/ZPysn3cf1IWXadF18IdzR4fqFVGTFZ1lytFL\n48qFeMqWNhs67jz7btWIzOpoia9gt2HDBu/PbseZ8X0G/JZU+qEnB7dtWjtcb9+/6+f502af\nLNdzw8rped5NAACgbWrKoAYtvrV1envhipKGM7OGPHRrEzm/63URGdOi89LI+xZ+81qZIOfG\nT0YNu7/x/V0vlEnZUrfLkFZj56+c3yjx6M/97n+qU42uPz1zk493uG6dShZ9fq1hfvAV7Nq0\naeP9ef1jtX9LrLrpyK9NIlOvq2vfqcfgIQNvLdWg57i+e969I2+7CQAANC12z8gPDqVsiH2/\ndZhJROquO9elzycnU9ylTLqKg8e+O+DJzsWCRKRGzHPPzOzyR0JK1OXVl13uR5/o07SUVW5u\n8P3SUvutUb7f4rp1KlmC8mHt8o2/N0+M+mR/zIMbvKkudWFrzRmPVGuxYIS8+1ce9A0AANwo\n/vtmiyXiDk+qE5Hg0oPWrx/k+fmZYY+v/2bptJ17Dx8+tOOnFZ6JtrLPPnjLwrsrVmrT8Y6W\nLVq073hX19olfb/FdetojL+POzmQ5NSZrtdYJ67k/wLZIwAAcONxJ7sVnSXjdFfysS5Vy943\n+dM4fVSrLg/O+vxjz3SdIfrDrf/9/cPCbreU3fPDB+3rl+04Zu11K9vdqo86GuPvEbt7i1kX\nfTD68LR1Fc1XT0W7ko8+9+5+a/GBedM3AABwoyjTpa79xaXb4h2NbEYRSTz9YUz9UQt3H250\ndPiqI/aT9uUljDoRSTyTGshOb57+8lcpM18fU7NFp6dFds9v3mDkKHnlD8/cWIfb80Pimc8v\nON0icuGf69fRGH+P2I2b/0DyxY31anec+eFXv/yxZ8+OX7/+eFanOnW/v2C//60xedpFAACg\nedH1Z3ct4e7cbvC367du37zqiTuetdu6dYgwm6NuUd0pry/ecOS/f7esWdS77WgR2X3wjKH4\n5TffGNtvyvu//PH3rxuWvTx3b1j1XiIiirlpqHnxoKm/7z3y98+rmiyHMQAAIABJREFUHrr9\nMZ2iiEhmdVwFutYB5+8Ru/LdFvww03DvqAXP9rt6nFNvKvbEzHVzu5XPm76h4IW8NrmguwAA\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Hourly\n",
    "\n",
    "Hourly <- ggplot(allDataClean, aes(hour, fill=member_casual)) +\n",
    "    geom_bar()+\n",
    "    labs(x=\"Hour of the Day\", y=\"Number of Rides\", title=\"Riders by Hour of the Day\") \n",
    "\n",
    "HourlyByWeekType <-allDataClean %>%\n",
    "    mutate(weekType = ifelse(day_of_week == 'Saturday' | day_of_week == 'Sunday', 'Weekend', 'Weekday')) %>%\n",
    " ggplot(aes(hour, fill=member_casual)) +\n",
    "    geom_bar() + \n",
    "    labs(x=\"Hour by WeekType\", y=\"Rides\", title=\"Rides by Hour Distinguished by Week Type\") + \n",
    "    facet_wrap(~ weekType)\n",
    "\n",
    "Hourly + scale_y_continuous(labels = label_comma()) \n",
    "\n",
    "HourlyByWeekType + scale_y_continuous(labels = label_comma()) "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c3b26dc2",
   "metadata": {
    "papermill": {
     "duration": 0.021416,
     "end_time": "2024-07-29T23:09:57.787500",
     "exception": false,
     "start_time": "2024-07-29T23:09:57.766084",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can observe that the most rides occur during the evening times (4pm - 6pm) with 6pm being the time with the most rides. We have our first offset late at night from 12am - 3am. During those times casual riders have a higher ratio than annual members. \n",
    "\n",
    "From the graph that distinguishes by week type, we can observe that weekday have a lot more rides throguhout the day and that casual riders are more likely to ride a bike during the weekends than they are during the weekdays. While annual members dominate the weekdays, it is almost a 50/50 percantage when it comes to the number of casual riders versus annual riders. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6a94f12a",
   "metadata": {
    "papermill": {
     "duration": 0.021713,
     "end_time": "2024-07-29T23:09:57.830197",
     "exception": false,
     "start_time": "2024-07-29T23:09:57.808484",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 6. Act\n",
    "In this last stage of the project, we will act on our findings. I will present what insights we have gained through our analysis and give recommended suggestions based on the findings and the objective of this project. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "80b0f194",
   "metadata": {
    "papermill": {
     "duration": 0.021016,
     "end_time": "2024-07-29T23:09:57.872293",
     "exception": false,
     "start_time": "2024-07-29T23:09:57.851277",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Key Takeaways\n",
    "* The average duration for causal riders is 23 minutes while the average trip duration for annual riders is 12 minutes.\n",
    "* Within the last 12 months, there were a total of 4,335,303 rides. Out of those rides, 1,524,550 of them were causal riders and 2,810,753 were annual riders.\n",
    "* Cyclistic had 30% more annual members than casual members\n",
    "* The most amount of rides occur during the summer time. August being the busiest month with 584,862 rides and a 60/40 percent proportion of annual versus casual member ratio.\n",
    "* The busiest day of rides throughout the week are Tuesday, Thursday, and Saturday. However, for casual riders the weekend has the most amount of rides and a bigger potential for converting member to annual members.\n",
    "* Throughout the weekday, there is an initial increase in rides in the morning (6am - 9am) which then falls back down but increases immensely back up in the evening time (4pm - 6pm). \n",
    "* On the weekends, there is a steady increase that goes from the morning to the afternoon (6am - 3pm) which then steadily decreases as the day goes on.\n",
    "* We can conclude that annual riders tend to use bikes as a way to commute to work during the week and that on weekends the number of causal riders spikes up a lot as rides are most likely used for recreation.\n",
    "\n",
    "\n",
    "### Recommendations\n",
    "1. In order to maximize annual riders, a marketing campaign needs to be specifically focused towards people who commute to work via bike. This can be done by making a bike ride to work/school more appealing. The campaign should focus on this specific target group and mention the amazing benefits that come with communiting to work via bike (avoid traffic, more sustainable to the planet, cheap, etc.). The ads should include showing a person in work clothes of different occupations using Cyclistic to get to work and showhing how simple it is to use. This should be advertised through billboards, handing out flyers to coorporate companies, and social media posts. \n",
    "2. Another way to maximize annual members is to convert the casual riders. The main focus would be to make it more appealing to people who only use Cyclistic during the weekends. Creating coupons or discounts so that getting an annual membership would be worth more than getting a casual rider card every weekend would help convert members. Advertising these coupons on the weekends where it gets very busy (parks, museums, trails, city, etc.) would get the attention of a lot of people. Advertising how easily accessible bikes can be not only to travel, but as well as exercise can increase the use of Cyclistic services as it provides a lot more variety than just commuting to work. \n",
    "3. The marketing campaign should start advertising in the late winter and early summer as the main and most amount of service is generated in the summer. Thus, a summer-plan should be considered as an option as it shows new members how accessible and easy Cyclistic is to use and would provide them more of an inclination to convert to an annual membership since they are already familiar with the service. \n",
    "\n",
    "### Things to Consider \n",
    "In this analysis, there was one concern with the data that was provided was that there were a good number of rides that had a trip duration of zero or the trip duration just was not recorded at all. This needs to be further examed to see if it was an error in the system or intential for a specific purpose. This information would have helped the analysis be more accurate. \n",
    "For the future, more data about the rider like age and gender would have been useful to potentially be able to target marketing strategies more direct. That would have been very interesting to see! \n",
    "\n",
    "### Conclusion\n",
    "This is my take on the Google Data Analytics Capstone Case Study project. This project has helped me put the data analysis steps and tools I learned through the course into action. With this project, I especially was able to practice the R language and utilize Kaggle to to complete my case study. \n",
    "Thank you for your time! \n",
    "\n",
    "Leon Le "
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 4969102,
     "sourceId": 8361090,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30698,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 612.805112,
   "end_time": "2024-07-29T23:09:58.316422",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-07-29T22:59:45.511310",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
