{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red52\green52\blue52;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c26667\c26667\c26667;\cssrgb\c100000\c100000\c100000;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid101\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 I used mop design pattern when solved the task .\
\
\pard\pardeftab720\parhyphenfactor20\partightenfactor0

\fs36 \cf2 \cb3 \expnd0\expndtw0\kerning0
One good part of this pattern is to have the business logic and business rules encapsulated in the model layer.However, the UIViewController still contains the UI related logic which means things like:\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\parhyphenfactor20\partightenfactor0
\ls1\ilvl0\cf2 \cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
calling the business logic and bind the results to the view\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
managing the view elements\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
transforming the data coming from the model layer into a UI friendly format\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
navigation logic\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
managing the UI state\cb1 \
\pard\pardeftab720\parhyphenfactor20\partightenfactor0
\cf2 \cb3 There are many variations of MVP with small differences between them. In this post, i\'a0chose the common one that seems to be mostly used in the today\'92s app development. The characteristics of this variant are:\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\parhyphenfactor20\partightenfactor0
\ls2\ilvl0\cf2 \cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
the view part of the MVP consists of both UIViews and UIViewController\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
the view\'a0delegates user interactions to the presenter\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
the presenter contains the logic to handle user interactions\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
the presenter communicates with model layer, converts the data to UI friendly format, and updates the view\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
the presenter has no dependencies to UIKit}