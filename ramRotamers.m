%% ramRotamers.m
% script for manually inputing data and storing in structure arrays
% used for data analysis B2 DEER labels 20150405
% 
%
% MAGIC NUMBERS (you need to change these):
% (raw data manual input), conditionIndexActive, conditionIndexInactive, conditionIndexNb
% results(resultsNumber).conditionName='', thresholdCW,
% thresholdDEER, thresholdNb, aminoAcid
%% populate the label type name field
rotamers.labelNames={'B2activeMTSLcryo','B2activeMTSLambient','B2activeProxylcryo',...
    'B2activeProxylambient','B2inactiveMTSLcryo','B2inactiveMTSLambient',...
    'B2inactiveProxylcryo','B2inactiveProxylambient','B2NbMTSLcryo',...
    'B2NbMTSLambient','B2NbProxylcryo','B2NbProxylambient'};

%% populate the residue number
rotamers(:,1).residue=[119
47
79
286
64
218
318
322
150
118
316
282
222
311
174
81
91
285
327
90
125
335
211
122
326
332
132
71
74
58
72
323
99
115
168
117
292
43
208
157
293
126
215
320
141
136
113
308
214
195
134
296
112
314
101
204
278
111
80
212
294
336
131
107
154
109
48
44
325
206
88
37
171
149
114
61
321
287
307
73
279
199
103
290
67
329
173
106
135
190
191
223
70
55
339
94
312
84
77
85
137
133
52
89
283
162
275
96
46
338
291
129
317
95
153
166
189
192
181
334
138
185
147
210
328
219
277
236
110
60
35
170
151
268
156
228
232
288
220
209
225
216
197
224
234
302
92
226
272
201
175
169
337
324
164
331
217
36
229
158
159
66
205
33
140
172
163
152
187
93
183
233
63
42
143
196
144
295
309
39
274
56
284
340
68
269
105
45
231
188
276
310
59
213
41
108
160
300
198
270
304
104
271
333
30
267
100
102
202
238
299
265
298
155
305
301
239
142
38
49
65
306
50
341
182
34
62
179
97
273
139
184
313
330
32
148
280
266
180
31
200
98
186
193
227
146
303
145
281
194
167
235
69
237
221
203
230
53
297
130
40
319
165
76
120
123
128
57
82
315
78
87
51
75
289
83
124
116
127
86
161
121
207
54];
rotamers(:,2).residue=[150
286
289
322
316
204
116
79
127
72
208
211
74
290
71
58
117
157
124
125
278
282
111
195
323
285
207
311
122
91
126
132
69
320
296
90
80
112
293
222
168
115
292
103
113
114
73
61
136
287
44
81
109
154
174
134
55
335
336
70
294
308
321
212
43
85
326
226
107
141
48
101
89
223
279
191
307
67
162
314
329
131
171
95
181
135
283
77
88
37
312
164
46
190
40
317
153
133
137
206
94
339
187
149
166
288
99
170
147
227
50
145
201
184
214
52
295
108
325
268
209
291
272
144
173
35
129
39
60
68
221
84
185
110
192
229
189
281
92
138
36
56
338
205
309
151
302
197
199
140
232
220
158
93
274
96
152
63
224
271
216
105
331
33
234
275
156
210
228
41
213
334
59
42
235
163
194
276
159
277
143
193
333
298
160
310
324
337
340
202
231
280
155
66
273
172
217
130
269
196
45
38
183
30
270
65
300
188
284
102
233
186
49
239
328
200
225
236
267
32
106
306
265
304
230
104
299
100
146
305
237
142
175
182
198
167
34
98
238
148
97
62
303
139
180
330
332
341
179
31
301
266
203
53
219
313
218
297
57
319
123
78
121
165
120
51
119
76
315
128
83
47
54
86
327
87
82
118
75
215
161
169
318
64]
rotamers(:,3).residue=[78
87
118
54
79
90
286
106
127
207
119
117
332
335
211
76
218
222
169
157
285
58
215
125
50
293
316
72
325
323
327
64
114
69
73
91
132
311
185
184
200
71
107
133
164
312
168
44
85
136
292
212
320
43
154
112
281
339
278
308
99
80
317
103
89
81
122
94
295
48
130
314
219
137
226
214
221
129
206
134
190
336
55
279
110
113
225
227
67
145
307
294
36
52
88
115
109
329
321
223
158
108
61
296
84
95
141
195
288
105
131
231
101
209
70
166
187
135
160
234
35
216
153
283
56
230
46
151
37
149
159
68
77
201
291
162
277
140
63
175
92
144
203
340
174
309
40
302
170
192
171
235
39
324
147
60
338
65
173
181
126
224
41
163
268
210
102
237
98
274
189
333
217
156
66
197
280
205
155
228
229
172
236
310
53
272
143
188
267
337
213
59
138
183
232
233
220
196
33
334
42
287
202
32
152
182
186
284
313
49
328
303
167
269
45
38
104
300
34
100
306
194
298
193
331
273
62
30
276
238
146
142
299
265
330
31
305
198
97
270
304
93
148
301
341
179
180
266
139
239
275
96
297
271
199
83
315
121
75
82
289
120
123
318
191
47
86
116
51
319
124
57
165
128
290
161
322
150
208
111
204
282
74
326];
rotamers(:,4).residue=[57
54
289
208
117
211
285
218
72
335
157
50
114
127
76
327
125
200
325
292
132
296
222
115
311
320
85
136
323
168
212
154
133
169
281
91
122
293
278
69
73
195
113
164
43
80
44
134
71
312
93
321
89
135
112
46
184
279
81
67
137
55
129
314
332
36
308
214
336
209
339
287
225
94
108
307
221
110
329
288
313
95
190
107
88
283
130
295
153
234
48
105
131
294
317
223
37
206
160
162
170
84
68
151
63
92
150
61
101
52
227
174
77
66
291
187
158
231
35
338
277
163
303
144
103
109
171
340
192
70
220
228
159
39
173
194
310
326
324
272
216
149
60
56
210
205
59
233
189
302
280
229
232
333
274
268
156
102
185
166
201
141
152
196
140
230
58
155
224
219
138
65
284
197
175
183
217
226
143
276
298
33
237
41
309
98
275
236
202
100
337
334
213
42
147
182
32
269
181
235
199
30
267
45
167
331
300
270
186
265
145
38
273
304
34
146
328
96
198
188
126
306
172
148
238
142
299
193
62
104
31
97
330
49
179
297
239
139
305
266
180
301
341
271
53
203
40
83
315
121
75
120
161
47
79
78
51
286
319
191
322
82
86
318
119
207
87
204
124
118
290
165
90
282
64
128
74
123
116
316
111
215
99
106];
rotamers(5).residue=[121
51
120
79
124
282
269
174
316
89
99
71
289
275
335
286
226
106
208
332
195
168
58
50
285
272
64
212
274
131
107
191
318
132
81
311
176
211
273
90
326
145
143
325
101
109
130
322
91
323
115
303
125
93
320
74
92
290
339
266
171
113
112
67
276
88
110
279
312
194
292
73
134
95
108
283
70
114
154
80
66
85
293
199
149
117
200
65
204
136
61
207
55
190
147
331
321
122
192
133
294
77
196
157
185
218
48
96
271
126
314
333
308
263
187
225
37
170
268
36
105
52
44
140
162
100
328
221
175
334
219
182
214
153
164
329
159
281
172
287
295
302
160
338
33
291
60
277
39
151
75
173
317
229
166
307
68
43
216
189
227
155
94
296
103
313
129
205
201
209
337
327
210
298
45
35
202
144
223
342
288
230
46
330
146
228
264
186
152
206
156
141
197
324
41
163
224
188
183
56
137
49
42
180
102
300
84
38
304
284
63
32
299
310
178
220
193
280
139
217
142
148
59
31
69
213
34
104
301
97
179
265
267
198
62
341
29
305
138
177
30
340
98
167
270
336
309
203
306
158
297
184
53
40
57
222
119
111
76
127
87
118
135
86
47
161
54
116
315
319
169
150
215
181
83
123
72
165
278
78
128
82];
rotamers(6).residue=[47
282
116
71
322
174
75
286
58
72
109
289
69
212
131
74
124
89
335
316
285
215
211
91
106
157
332
318
121
292
64
79
143
168
125
339
67
323
195
117
115
120
130
132
320
325
326
80
70
93
113
154
145
122
276
308
207
275
175
99
73
283
294
311
312
194
176
126
281
81
329
112
273
225
44
92
290
95
107
331
55
50
204
61
303
321
219
271
266
153
218
85
171
293
48
296
221
136
137
314
147
229
33
200
162
199
101
277
88
149
307
37
43
338
140
77
108
190
170
336
317
36
164
295
274
328
60
227
287
68
96
327
223
100
56
166
114
160
105
270
333
192
288
209
187
302
214
172
110
201
133
66
230
264
182
103
206
196
52
39
144
197
342
205
173
334
158
220
46
159
94
151
263
41
291
155
268
129
216
42
152
202
298
193
184
330
146
224
40
63
183
35
279
324
141
280
38
313
228
156
208
163
84
188
102
210
59
337
142
310
213
45
297
180
217
265
49
284
139
178
340
186
299
65
32
300
34
267
304
301
98
30
31
148
189
179
29
104
198
167
62
138
97
177
305
306
341
309
53
185
203
83
86
119
123
51
319
169
78
118
150
128
315
82
111
76
278
165
127
222
90
57
191
226
134
87
272
269
135
54
181
161];
rotamers(:,7).residue=[335
318
135
119
272
90
204
71
110
113
106
169
118
289
326
69
181
130
219
199
174
64
323
157
325
290
275
50
316
89
93
311
168
218
109
125
72
285
184
40
122
225
115
74
112
145
43
286
329
332
279
211
154
274
91
200
73
44
117
339
336
312
322
281
80
320
85
68
132
81
190
308
175
107
276
185
95
229
48
207
61
271
70
321
331
105
126
294
92
214
270
296
170
136
295
133
187
314
153
221
292
164
273
55
56
129
67
195
60
266
182
96
277
101
287
288
53
293
201
328
88
302
36
216
108
196
33
194
307
66
291
338
176
166
230
209
283
317
77
37
149
333
103
52
193
94
59
206
84
160
173
205
65
158
46
137
220
342
144
49
223
151
140
41
114
208
35
171
202
213
100
304
337
63
224
162
327
228
155
159
146
300
39
217
102
147
306
310
210
156
324
280
309
178
98
264
197
334
152
186
265
298
263
141
330
313
163
227
172
188
183
42
97
268
62
301
305
45
189
139
284
192
299
148
179
38
167
177
30
212
267
198
142
341
34
31
32
180
340
29
104
203
138
303
297
57
78
83
161
123
54
86
222
319
315
116
87
111
82
79
99
165
191
127
121
128
76
278
150
51
124
134
47
58
131
215
143
120
226
269
282
75];
rotamers(:,8).residue=[118
335
135
71
119
332
289
290
169
130
275
131
69
322
285
219
323
316
50
279
89
218
91
311
115
145
203
157
110
113
211
168
200
72
125
325
339
184
117
320
132
109
80
329
154
225
190
269
212
312
73
229
75
85
93
283
164
64
44
81
296
122
112
336
181
271
43
195
286
92
308
276
294
293
281
174
136
128
129
105
295
61
182
187
221
226
55
321
277
328
288
266
101
108
137
214
170
88
126
70
313
314
270
209
68
46
95
147
176
268
153
66
60
114
36
77
274
94
333
201
56
273
96
287
338
206
48
185
317
40
52
220
302
162
65
149
307
171
166
216
103
199
33
173
133
158
196
84
59
340
205
291
160
202
303
144
67
37
140
223
155
107
280
292
163
175
217
230
310
337
327
100
41
324
152
194
298
193
210
156
228
227
35
224
63
151
142
331
342
306
334
159
39
172
284
98
207
178
167
141
186
42
309
189
183
213
139
265
304
192
45
188
264
146
197
102
38
34
32
305
49
263
300
53
299
267
104
148
330
301
177
97
179
62
198
30
31
138
180
29
341
297
326
127
111
315
82
121
161
83
79
57
87
222
54
134
86
318
123
319
116
120
150
47
90
58
51
272
74
124
165
282
76
143
106
99
191
278
78
215
208
204];
rotamers(:,9).residue=[208
120
118
200
71
76
322
282
116
207
131
79
174
117
274
267
74
122
69
323
326
87
141
99
293
125
157
211
132
265
50
311
331
93
229
90
321
154
89
136
325
230
91
314
224
212
81
133
312
101
70
184
285
307
168
290
271
185
58
232
114
160
338
115
297
80
204
296
137
63
281
327
55
129
113
37
266
275
206
182
295
48
61
214
153
88
73
272
66
77
308
294
196
92
320
233
107
223
102
135
112
192
108
164
288
334
65
52
268
190
96
171
44
226
283
60
209
103
339
330
144
279
85
68
170
263
175
172
139
162
216
149
72
199
151
166
202
304
298
292
95
126
318
176
336
317
31
173
337
197
225
270
59
156
205
67
201
46
187
56
146
147
227
287
140
221
291
302
42
277
94
195
100
155
269
189
152
163
32
158
62
324
273
143
193
188
45
280
309
194
159
228
284
180
35
264
39
41
148
210
109
49
217
104
310
220
38
98
34
36
105
341
276
231
43
183
213
178
333
30
300
301
142
328
97
306
84
186
179
342
340
29
313
234
343
198
177
305
299
110
33
167
332
219
145
203
53
303
40
78
57
169
111
51
161
119
106
128
319
86
181
278
82
83
124
315
215
165
138
316
289
121
75
335
218
286
64
329
123
47
134
222
54
191
127
150
130];
rotamers(:,10).residue=[165
116
208
54
289
282
71
174
117
141
74
326
329
211
267
64
285
157
125
286
93
207
154
265
323
132
290
90
293
91
339
126
320
122
204
176
296
312
80
195
274
168
325
194
136
103
70
61
212
279
55
113
292
229
133
330
89
311
81
43
272
281
115
66
230
294
332
73
137
321
44
48
68
338
144
153
275
308
135
314
233
171
164
50
175
221
114
225
37
170
92
268
94
297
107
287
317
85
77
307
270
336
223
266
95
288
283
295
224
112
190
88
334
63
192
139
60
201
102
160
151
108
149
199
328
65
302
206
214
232
67
146
69
46
96
56
36
337
162
166
226
105
182
313
129
209
172
147
298
52
277
202
196
31
187
197
142
173
101
59
227
41
324
205
35
303
155
269
327
276
291
158
333
216
280
210
42
163
156
152
159
104
213
143
284
39
228
84
100
183
231
220
264
189
310
273
340
62
38
217
188
263
140
306
299
49
304
79
34
148
45
186
180
178
342
184
32
30
343
98
198
109
300
341
185
193
99
301
218
29
179
97
234
177
167
33
110
331
53
219
305
309
145
203
40
57
83
128
123
169
82
118
78
75
127
121
120
335
319
72
124
138
181
86
111
119
47
51
130
315
106
200
150
316
222
191
215
161
58
318
134
271
131
278
76
87
322];
rotamers(:,11).residue=[290
90
211
207
286
289
135
150
326
191
141
99
74
54
274
113
293
267
218
323
275
125
50
67
229
311
164
122
312
73
285
296
154
292
133
157
195
94
132
212
174
112
89
190
168
281
233
48
107
339
91
44
115
265
184
226
43
80
330
295
230
144
336
297
264
321
327
316
110
95
199
63
272
129
61
328
314
176
81
139
137
279
221
40
308
232
294
136
153
36
101
214
55
70
277
225
77
46
266
160
288
287
317
92
307
109
149
56
320
37
338
175
309
334
333
203
302
52
105
224
185
206
65
182
223
291
142
209
220
126
313
201
158
263
88
337
53
162
102
60
205
192
108
85
98
84
103
298
202
187
173
96
343
219
325
216
170
159
269
146
280
100
310
228
276
35
283
227
155
151
171
166
197
59
340
217
183
104
189
324
210
152
156
143
300
38
172
147
178
196
163
31
49
306
33
41
42
62
284
213
304
140
39
188
180
32
45
273
234
30
342
186
231
29
198
148
34
299
177
341
301
97
179
270
167
305
303
194
193
66
145
57
128
271
318
106
75
82
71
208
111
120
123
83
76
161
118
86
72
319
51
79
200
121
165
127
282
130
138
322
181
117
215
87
64
134
131
78
116
335
329
47
315
222
114
331
68
124
268
204
119
58
332
278
93
69
169];
rotamers(:,12).residue=[315
335
54
286
174
114
150
68
282
211
218
265
293
285
157
323
50
274
125
67
66
133
226
296
292
325
311
135
115
154
164
132
91
320
190
281
89
195
122
112
275
73
129
184
103
113
221
85
168
212
295
94
270
44
321
80
312
107
268
137
165
136
330
61
214
272
294
314
225
81
316
339
308
63
153
105
144
199
279
36
55
65
328
160
92
93
307
43
266
331
139
46
56
264
95
223
287
70
48
317
99
194
338
209
187
232
108
201
326
277
267
206
52
77
88
302
288
182
149
283
126
229
224
298
216
170
324
220
162
336
110
146
35
297
263
37
309
171
313
334
142
60
191
166
291
158
269
205
185
219
96
102
333
155
173
176
84
310
41
159
280
230
340
40
175
163
202
143
100
337
151
156
196
227
172
210
141
31
59
152
183
276
178
140
284
217
343
32
39
101
228
306
192
42
189
186
197
45
147
34
49
304
273
231
98
213
188
38
167
193
342
104
62
33
300
30
180
198
299
29
234
148
53
305
97
301
177
341
179
303
145
109
203
57
134
83
75
138
51
82
319
161
79
127
169
318
128
124
130
116
111
106
120
71
87
64
86
76
123
215
208
78
322
90
289
204
332
271
117
278
74
119
207
121
200
290
58
222
327
69
233
118
131
329
72
47
181];
%% populate the # of rotamers data
rotamers(1).number=[1
2
2
2
2
3
3
4
3
2
5
7
14
15
17
43
26
7
4
8
21
7
6
17
7
9
25
9
14
24
12
20
9
21
31
14
28
28
3
17
19
23
5
26
23
28
28
26
60
24
51
23
29
55
39
7
16
5
38
30
49
46
58
31
43
24
63
55
23
61
70
69
64
41
20
26
45
53
63
45
62
40
39
9
66
58
86
6
63
62
10
61
28
53
36
34
28
80
75
45
44
47
81
35
66
69
43
82
63
80
81
59
50
74
51
82
104
59
66
99
89
50
93
81
115
25
79
131
16
100
57
68
89
71
90
78
90
84
87
61
23
95
119
80
82
91
89
55
99
88
81
3
122
108
36
80
109
48
97
86
85
100
84
106
93
131
99
98
73
36
98
91
89
110
109
96
95
69
63
76
103
83
123
101
91
117
87
110
97
121
101
94
100
122
102
44
71
147
135
130
129
135
50
104
127
106
126
99
106
147
127
149
104
118
143
163
133
141
116
109
96
148
15
169
128
143
163
168
157
121
146
37
36
156
97
152
93
176
158
170
16
119
124
36
70
109
28
31
30
39
78
108
13
83
54
24
44
30
25
22
21
1
1
1
1
1
1
1
1
2
1
1
2
1
2
2
2
4
3
3
3
2
6
3];
rotamers(2).number=[1
2
5
3
6
8
6
2
4
18
5
7
17
11
15
19
13
14
3
21
19
10
6
28
19
10
7
23
19
27
27
30
9
32
37
9
40
34
22
22
34
27
34
46
30
21
52
25
37
58
55
64
22
47
22
61
60
10
51
36
51
23
46
41
38
49
8
53
39
36
68
42
42
67
66
10
71
76
82
66
68
68
74
83
74
73
77
88
80
78
30
38
66
73
16
54
53
55
50
74
39
42
86
71
92
90
15
82
108
70
27
34
90
35
75
89
80
54
26
79
82
93
109
102
95
70
65
99
110
99
56
92
54
26
73
105
118
39
100
107
57
90
90
101
69
98
100
128
37
102
96
95
94
41
111
100
112
104
95
56
107
101
95
124
87
58
101
96
88
114
131
123
113
127
121
108
50
116
94
87
128
40
111
119
80
107
122
139
109
121
112
100
121
106
133
148
127
15
126
106
120
125
111
138
143
112
158
141
137
119
107
133
119
150
136
21
24
151
119
111
8
163
160
147
50
159
139
139
122
163
96
157
92
151
160
88
159
132
165
168
173
182
32
162
176
178
10
187
185
186
183
195
26
42
27
43
7
27
1
1
1
1
1
1
1
1
1
1
1
2
2
3
3
2
4
2
2
3
2
3
5
5
3
8];
rotamers(3).number=[1
1
1
1
1
1
1
1
1
2
2
4
2
4
2
2
6
9
4
3
2
10
2
7
11
9
5
8
11
7
4
3
10
7
18
12
8
14
14
12
6
8
14
19
17
8
15
23
20
11
10
16
10
19
20
12
12
23
13
10
3
25
26
20
14
30
8
19
29
30
9
27
7
29
24
31
24
22
28
29
31
23
28
31
7
6
10
32
32
7
35
31
16
36
34
15
8
31
17
28
37
26
9
17
39
37
9
15
38
36
31
42
12
30
15
38
33
27
32
37
32
45
18
35
41
19
26
43
39
40
41
30
44
47
43
39
38
42
41
38
47
47
7
49
10
33
9
51
38
29
33
53
46
54
54
53
40
46
42
44
5
40
53
47
37
45
48
44
62
56
53
42
56
42
46
60
40
47
53
36
48
63
66
50
15
49
59
69
56
67
58
49
46
45
45
45
43
49
61
58
57
31
56
52
49
63
56
63
16
47
62
9
40
59
54
61
72
79
70
66
69
21
52
15
35
63
83
63
53
75
65
78
66
79
82
83
68
68
80
66
67
13
73
88
90
89
78
95
75
77
26
46
13
19
11
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
2
2
2
4
5
5];
rotamers(4).number=[1
1
1
1
6
3
3
7
6
7
3
12
11
3
3
5
9
6
14
13
14
17
14
12
15
19
24
15
8
19
20
19
19
9
20
15
10
6
15
8
21
11
7
20
18
28
28
29
11
13
15
18
21
35
11
28
15
39
36
30
33
32
25
29
4
21
11
34
30
33
23
32
11
23
25
45
24
10
34
41
11
40
33
15
38
35
8
36
19
40
34
42
36
29
27
36
41
34
32
41
39
42
37
49
45
52
5
12
14
44
37
12
47
47
47
38
43
47
36
44
37
54
9
50
22
13
37
50
33
15
45
49
49
55
52
25
53
6
58
51
52
44
62
51
53
55
55
49
60
60
46
56
49
49
60
41
47
56
16
44
51
12
53
52
49
21
10
58
49
10
52
53
68
65
48
46
64
28
64
57
57
68
46
57
34
72
27
71
67
69
69
65
68
65
63
71
56
70
49
65
15
68
57
57
43
40
85
73
64
87
10
69
72
71
79
69
69
51
77
77
9
78
73
84
82
86
73
16
91
84
93
86
91
53
96
11
81
83
77
100
85
96
99
22
12
12
16
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
1
2
2
2
2
2
2
2
2
3
2
2
2
3
3
2
8
4
3
6
2];
rotamers(5).number=[1
1
1
1
3
3
2
4
5
11
2
6
9
9
3
6
5
3
2
11
18
14
12
10
16
2
7
18
13
14
35
5
3
25
50
27
17
15
41
5
11
23
20
25
37
13
14
4
25
18
18
50
32
25
33
18
48
10
15
51
62
17
29
23
36
70
11
19
26
25
6
46
2
44
29
45
24
17
41
44
81
46
17
22
68
16
21
61
5
62
47
8
54
41
83
51
48
23
39
68
60
68
60
20
41
33
54
71
50
33
58
76
53
102
68
18
63
82
67
36
55
84
52
83
78
83
56
45
38
71
14
67
74
57
45
23
88
45
96
67
61
85
77
62
64
89
67
62
81
90
4
91
50
31
76
67
38
41
93
74
75
100
37
38
89
58
81
89
91
63
74
88
89
113
112
105
100
81
76
94
68
75
75
109
100
102
74
120
99
83
92
89
117
115
95
100
85
123
109
72
29
105
113
120
112
90
102
118
121
119
104
113
120
103
121
91
44
98
117
103
113
140
106
157
9
115
125
149
144
151
159
133
136
142
158
170
161
133
149
162
157
75
110
72
53
43
59
23
104
85
22
13
27
27
1
1
1
1
1
1
1
1
1
1
2
1
2
2
2
2
2
2
5
2
2
2
4
2
5
2
3
3];
rotamers(6).number=[3
5
5
6
3
5
2
5
10
10
11
9
11
19
11
18
3
15
3
9
20
7
21
23
6
22
17
4
4
8
15
4
20
25
29
20
28
19
22
15
24
6
13
34
41
30
14
46
26
31
17
40
33
27
46
52
13
16
41
5
55
47
59
40
28
32
23
40
49
63
30
36
42
20
52
58
13
52
43
57
62
21
8
47
64
60
20
62
71
59
34
56
73
22
54
39
50
74
31
69
95
43
78
27
84
27
49
67
80
84
77
74
50
79
94
83
41
55
85
44
69
40
49
65
22
64
78
84
72
49
80
94
95
97
81
89
15
90
72
59
93
47
83
70
83
91
81
111
20
94
79
100
84
78
83
91
97
74
96
99
94
130
107
106
110
96
94
102
85
101
47
109
110
106
102
116
83
93
97
122
115
115
128
58
19
123
117
105
22
116
119
123
22
128
94
110
132
56
118
109
4
113
117
141
131
105
112
86
129
120
130
125
29
143
117
144
110
138
128
142
83
133
130
79
129
110
138
150
132
163
129
175
174
160
91
172
175
169
162
80
178
171
167
176
138
117
185
58
26
48
20
1
1
1
1
1
1
1
1
2
1
1
3
2
2
2
4
2
3
2
7
2
6
3
3
4
4
5
3
2
3
3];
rotamers(7).number=[1
1
1
1
1
1
1
4
1
2
2
4
2
4
4
4
3
4
7
6
4
4
7
6
11
3
7
9
3
15
7
16
13
14
5
10
5
6
7
11
10
9
13
5
9
15
18
3
12
5
10
8
13
7
13
9
20
21
6
11
13
6
4
16
24
19
23
15
18
26
23
24
24
18
20
18
21
26
25
7
13
17
6
27
27
28
9
32
27
34
27
16
36
33
26
34
32
34
21
18
4
17
22
34
34
35
9
9
33
30
31
33
29
19
36
36
11
7
44
26
35
38
18
43
23
35
33
15
37
36
43
36
8
34
43
32
19
34
40
36
40
34
39
40
15
21
45
44
51
39
45
47
22
41
26
11
44
61
47
47
40
47
45
47
5
4
52
31
49
54
40
55
45
52
47
34
49
51
52
48
61
37
51
48
66
41
51
50
44
46
57
40
22
60
57
39
59
45
53
65
72
58
54
47
61
20
47
44
51
66
54
57
75
34
82
77
51
55
39
53
66
28
65
69
83
63
36
85
86
8
60
71
59
85
70
82
55
64
35
80
79
5
75
32
15
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
2
2
2
2
1
2
2
2
2
3
6
2
5
3
2
2];
rotamers(8).number=[1
2
1
2
2
4
6
4
2
4
6
4
8
2
6
6
6
6
11
11
19
17
13
18
9
20
10
5
2
7
12
19
9
6
13
12
13
8
6
22
22
7
28
13
17
9
24
4
13
12
25
27
4
29
16
27
26
4
24
31
16
11
10
15
5
24
21
5
4
31
24
25
39
8
15
3
36
2
34
30
27
13
33
34
22
2
39
33
30
32
41
34
21
25
10
43
40
40
12
11
20
37
28
34
23
33
25
43
15
37
23
37
36
7
17
45
11
28
42
45
37
25
40
40
39
47
28
20
37
16
43
50
45
39
27
46
42
34
44
47
44
10
39
51
40
44
42
52
51
44
55
50
46
55
35
48
10
42
52
42
60
24
48
7
52
28
55
45
55
44
59
52
51
63
55
20
65
18
49
52
55
49
61
52
55
55
58
32
64
58
48
51
52
56
66
65
5
68
37
49
69
64
22
50
59
66
59
77
64
28
63
74
45
69
65
71
68
74
64
58
49
55
48
12
67
72
82
83
70
79
89
82
91
90
79
90
92
85
70
93
95
13
4
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
2
2
2
2
2
2
2
2
3
2
2
8
4
3
4
2
2
3
4
4];
rotamers(9).number=[1
1
1
1
3
1
3
3
4
3
2
2
6
9
10
8
13
16
3
12
4
2
10
5
14
23
18
8
20
5
21
21
6
15
23
5
46
34
39
39
13
39
32
50
58
35
53
34
16
48
27
9
8
69
26
8
6
27
11
49
14
64
42
24
14
38
6
24
53
57
31
7
55
54
7
59
54
18
67
81
60
54
34
64
52
81
42
53
21
60
37
54
60
64
26
33
23
70
65
13
40
36
41
32
75
60
75
84
6
42
81
61
57
9
68
80
75
43
27
37
50
57
48
15
76
93
45
106
27
81
94
63
5
28
86
90
88
110
92
21
63
27
3
18
53
45
107
94
66
112
24
36
82
95
94
21
84
72
78
64
76
103
85
71
107
36
95
70
103
64
21
10
110
92
93
106
89
99
112
97
120
98
107
115
29
132
112
95
41
25
91
91
108
118
91
43
112
104
126
95
18
106
106
120
97
84
114
104
125
64
70
146
98
116
29
109
121
111
92
139
104
151
54
57
151
121
109
116
158
123
63
144
36
140
83
123
160
108
116
8
65
80
6
21
17
21
35
43
19
1
1
1
1
1
1
1
1
1
1
2
2
2
1
1
3
2
2
2
3
4
3
2
3
2
6
3
2
7
2
4
7
5
2
3
2
5
2];
rotamers(10).number=[1
4
2
5
6
6
5
10
10
14
17
7
3
7
15
4
10
16
25
6
19
6
32
12
15
28
8
5
18
33
33
26
37
23
9
15
27
18
45
7
11
33
14
31
43
44
36
35
39
66
57
11
26
35
44
45
47
36
68
37
58
36
31
29
46
61
4
47
58
58
51
59
17
64
53
55
22
44
16
60
27
62
30
33
52
45
11
18
71
80
75
8
26
12
30
75
51
57
72
82
43
58
83
72
68
81
75
67
80
44
55
88
75
74
38
37
92
86
73
76
94
56
82
32
72
79
75
72
75
67
28
83
5
77
93
75
74
75
89
101
16
71
98
40
68
86
119
120
99
95
67
107
75
116
88
127
66
103
60
98
95
114
110
108
96
34
113
111
12
110
102
105
96
103
114
109
119
114
115
103
99
131
131
121
124
131
105
119
121
120
128
97
45
116
110
123
72
144
126
122
146
102
128
136
131
109
128
3
134
142
127
130
139
129
142
14
130
146
98
127
149
20
116
165
42
36
7
167
10
162
175
170
165
177
88
68
17
9
35
20
132
41
19
24
20
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
2
2
4
1
2
3
3
2
2
3
2
4
4
3
6
5
4
6
10
3
4
3
6
4
2
5
3];
rotamers(11).number=[1
1
1
1
1
1
2
2
1
2
4
3
3
3
3
4
4
5
7
10
10
8
12
9
5
20
12
11
6
20
4
15
12
15
20
6
4
11
8
15
5
11
22
21
14
18
7
22
6
14
16
24
16
8
5
5
14
22
23
23
27
17
19
7
13
28
5
4
4
32
8
31
27
26
12
33
23
7
31
18
32
36
17
11
13
24
29
18
17
27
20
30
30
12
31
7
31
30
29
35
38
38
28
36
43
7
45
29
13
31
35
20
16
38
39
7
33
36
29
37
12
33
30
39
34
45
26
34
43
6
14
46
44
43
38
22
15
42
38
46
50
23
27
22
55
53
21
43
46
34
45
44
44
8
9
48
40
46
46
36
48
57
49
42
43
42
37
43
47
48
22
50
59
41
30
53
48
64
60
45
47
45
47
56
53
60
52
55
58
34
49
59
44
64
22
53
54
70
52
61
52
56
61
69
59
58
58
52
72
68
67
58
59
66
61
67
62
63
84
83
79
70
84
18
37
51
12
8
13
10
5
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
1
2
1
1
2
1
1
1
2
2
2
2
2
2
3
4
3
3
3
2
5
3
2];
rotamers(12).number=[1
1
1
3
3
4
2
3
2
4
4
7
8
5
5
8
15
2
11
10
5
20
4
14
16
8
22
7
14
15
17
13
14
17
22
22
28
3
10
13
10
28
25
8
23
6
16
26
19
20
26
15
17
28
27
26
7
11
4
31
5
22
26
12
31
31
35
29
7
34
8
17
14
39
20
31
20
10
41
31
34
36
39
37
35
9
47
18
33
7
18
33
33
15
35
38
38
11
28
32
3
8
41
38
40
34
29
49
3
33
5
41
40
40
43
35
43
45
50
39
9
12
41
48
48
48
52
44
47
24
3
42
45
9
46
35
17
27
11
43
29
51
3
55
49
47
55
58
12
10
50
42
47
56
58
11
53
54
57
47
53
27
33
14
25
57
53
59
62
30
54
53
39
46
58
53
7
63
48
49
54
50
63
63
61
57
45
65
62
29
49
68
25
60
62
65
68
68
59
66
53
55
64
69
66
68
78
65
41
14
78
72
75
26
59
78
62
69
69
75
79
75
18
55
81
82
92
90
90
12
10
10
6
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
2
2
1
2
2
1
2
3
2
4
2
2
2
2
3
5
3
3
2
12
2
4
3
2
4
2];
%% ANALYSIS
% determine maximum amino acid number for the loop variable
for i=1:size(rotamers,2);
    resMax(i)=max(rotamers(i).residue);
    residueMax=max(resMax);
    % prepopulate an index vector
    rotamers(i).index=zeros(residueMax,1);
end
% next, loop over and index each residue number
% match residue numbers across conditions
% subtract certain conditions from one another (ex: Active - Inactive)
%% Determine difference between Active and Inactive in # of rotamers
conditionIndexActive=1;
conditionIndexInactive=5;
conditionIndexNb=9;
resultsNumber=conditionIndexActive;
results(resultsNumber).conditionName='Active minus Inactive, cryo, MTSSL';
for i=1:residueMax
    if isfinite(find(rotamers(conditionIndexActive).residue==i))==1; %don't look for residue positions that aren't in the results file
        rotamers(conditionIndexActive).index(i)=(find(rotamers(conditionIndexActive).residue==i));
        rotamers(conditionIndexActive).sortedActive(i)=rotamers(conditionIndexActive).number(rotamers(conditionIndexActive).index(i));
    end
    % the sorted active rotamer numbers are placed into rotamers().sortedActive
    if isfinite(find(rotamers(conditionIndexInactive).residue==i))==1; %don't look for residue positions that aren't in the results file
        rotamers(conditionIndexInactive).index(i)=(find(rotamers(conditionIndexInactive).residue==i));
        rotamers(conditionIndexInactive).sortedInactive(i)=rotamers(conditionIndexInactive).number(rotamers(conditionIndexInactive).index(i));
    end
    % the sorted inactive rotamer numbers are placed into rotamers().sortedInactive 
end
% only analyze up to the minVector size so that matrix dimensions agree
% subtract and store in results().rotamers
minVectorSize=min(resMax);
for i=1:minVectorSize
    results(resultsNumber).rotamers(i)=(rotamers(conditionIndexActive).sortedActive(i))-(rotamers(conditionIndexInactive).sortedInactive(i));
end
% re-run this section as needed, inputting different condition indices and
% results numbers for storing results.
%% Thresholding for cw and DEER
thresholdCW=30; % a change in the number of rotamers must be greater than this number
thresholdDEER=200; % a change in the number of rotamers must be less than this number to avoid skewing distance distributions
results(resultsNumber).cw=[]; 
results(resultsNumber).DEER=[];% clear the previous round of stored results
for i=1:minVectorSize
    if abs(results(resultsNumber).rotamers(i)) > thresholdCW
    results(resultsNumber).cw(i,1)=i;
    results(resultsNumber).cw(i,2)=results(resultsNumber).rotamers(i);
    end 
    if isfinite(find(rotamers(conditionIndexActive).residue==i))==1;
        if isfinite(find(rotamers(conditionIndexInactive).residue==i))==1; 
       if abs(results(resultsNumber).rotamers(i)) < thresholdDEER
    results(resultsNumber).DEER(i,1)=i;
    results(resultsNumber).DEER(i,2)=results(resultsNumber).rotamers(i);
       end
        end
    end
end
%% print results
clear('cwList'); %clear the previous round of stored results.
cwList(:,1)=results(resultsNumber).cw((results(resultsNumber).cw(:,1)~=0),1);
cwList(:,2)=results(resultsNumber).cw(cwList(:,1),2);
sprintf('CW positions above threshold %d',thresholdCW)
cwList
clear('DEERList') %clear the previous round of stored results.
DEERList(:,1)=results(resultsNumber).DEER((results(resultsNumber).DEER(:,1)~=0),1);
DEERList(:,2)=results(resultsNumber).DEER(DEERList(:,1),2);
sprintf('DEER positions below threshold %d',thresholdDEER)
DEERList
%% plot results
figure(1)
xlim([1 350]);
bar(cwList(:,1),cwList(:,2),'k')
xlabel('residue number');
ylabel('delta rotamers');
title(results(resultsNumber).conditionName)
figure(2)
xlim([1 350]);
bar(DEERList(:,1),DEERList(:,2),'k')
xlabel('residue number');
ylabel('delta rotamers');
title(results(resultsNumber).conditionName)
%% Determine difference between Active and Nb-bound, and/or Inactive and Nb-bound in # rotamers
% adjust the CW and DEER results, throwing out positions that are
% significantly influence by nanobody.
resultsNumber=conditionIndexNb; % store difference between active and nanobody structures in results(2)
for i=1:min(resMax)
    if isfinite(find(rotamers(conditionIndexNb).residue==i))==1; %don't look for residue positions that aren't in the results file
        rotamers(conditionIndexNb).index(i)=(find(rotamers(conditionIndexNb).residue==i));
        rotamers(conditionIndexNb).sortedNb(i)=rotamers(conditionIndexNb).number(rotamers(conditionIndexNb).index(i));
    end
end
minVectorSize=min(resMax);
for i=1:minVectorSize
    results(resultsNumber).rotamers(i)=(rotamers(conditionIndexNb).sortedNb(i))-(rotamers(conditionIndexActive).sortedActive(i));
end
% thresholding Active results by delta nanobody, store in results 
% Nanobody results index
thresholdNb=20;
minVectorCW=min(size(rotamers(conditionIndexNb).sortedNb,2),size(results(conditionIndexActive).cw,1)); % if numbers deleted off the end, only loop up to the end of the results
minVectorDEER=min(size(rotamers(conditionIndexNb).sortedNb,2),size(results(conditionIndexActive).DEER,1)); % only loop up to end of results to avoid exceeding matrix size
for i=1:minVectorCW
    if abs(results(resultsNumber).rotamers(i)) < thresholdNb
    results(resultsNumber).Nb(i,1)=i;
    results(resultsNumber).Nb(i,2)=results(resultsNumber).rotamers(i); % column 2 is the number of Nb rotamers - Active rotamers, thresholded
    results(resultsNumber).cw(i,1)=i;
    results(resultsNumber).cw(i,2)=results(conditionIndexActive).cw(i,2);
    end
end
    for i=1:minVectorDEER
        if abs(results(resultsNumber).rotamers(i)) < thresholdNb
    results(resultsNumber).Nb(i,1)=i;
    results(resultsNumber).Nb(i,2)=results(resultsNumber).rotamers(i);
    results(resultsNumber).DEER(i,1)=i;
    results(resultsNumber).DEER(i,2)=results(conditionIndexActive).DEER(i,2);
    end
end
%% print thresholded list
clear('cwListNb'); %clear the previous round of stored results.
cwListNb(:,1)=results(resultsNumber).cw((results(resultsNumber).cw(:,2)~=0),1);
cwListNb(:,2)=results(resultsNumber).cw(cwListNb(:,1),2);
sprintf('CW positions above threshold %d with Nb threshold %d',thresholdCW,thresholdNb)
cwListNb
clear('DEERListNb'); %clear the previous round of stored results.
DEERListNb(:,1)=results(resultsNumber).DEER((results(resultsNumber).DEER(:,2)~=0),1);
DEERListNb(:,2)=results(resultsNumber).DEER(DEERListNb(:,1),2);
sprintf('DEER positions below threshold %d with Nb threshold %d',thresholdDEER,thresholdNb)
DEERListNb
%% refine sites by positions that should be easy to label
%% refine using results from AJ's code for distances between carbons between two
% structures
% first, manually import data
distances.residues=[57
58
59
60
66
67
68
69
134
135
136
137
146
147
148
149
226
227
228
229
230
329
328
327
331];
distances.ca=[12.5163491
13.54771902
13.73809176
14.04904226
14.80195717
14.26628318
12.95615817
12.1654955
9.418363346
8.748246603
7.756508393
9.649582754
13.00963834
14.01196019
13.17046075
11.23722772
4.145283007
1.642715908
2.298508049
4.398834578
1.930152136
11.9079286
9.799991255
9.306981674
13.94181882];
distances.cb=[11.95133997
13.71876624
13.63851059
13.9088566
15.70996155
15.93908839
14.25998355
13.46913446
11.56624556
10.46659278
9.977911931
13.38237588
14.81440556
16.00309577
14.85125231
12.93582194
6.37486658
3.087142593
5.042959478
8.041183127
2.806407139
12.12186779
8.310031464
8.984565377
14.78082213];
%% Distance thresholding
thresholdDist=10;
for i=1:size(distances.ca,1)
   if find(DEERListNb==distances.residues(i))
      results(resultsNumber).distanceca(:,1)=distances.residues(distances.ca>thresholdDist) % threshold ca, first column is position
       results(resultsNumber).distanceca(:,2)=distances.ca(distances.ca>thresholdDist) % threshold ca, second column is distance
       results(resultsNumber).distancecb(:,1)=distances.residues(distances.cb>thresholdDist) % same with cb
      results(resultsNumber).distancecb(:,2)=distances.cb(distances.cb>thresholdDist)
   end
end
% plot distances
figure(5)
bar(results(resultsNumber).distanceca(:,1),results(resultsNumber).distanceca(:,2))
figure(6)
bar(results(resultsNumber).distancecb(:,1),results(resultsNumber).distancecb(:,2))
%% find the data for a single position
aminoAcid=333;
sprintf('Amino Acid # %d',aminoAcid)
rotamers(1).labelNames(conditionIndexActive)
rotamers(1).labelNames(conditionIndexInactive)
rotamers(1).labelNames(conditionIndexNb)
sprintf('Active rotamers: %d', rotamers(conditionIndexActive).sortedActive(aminoAcid))
sprintf('Inactive rotamers: %d', rotamers(conditionIndexInactive).sortedInactive(aminoAcid))
sprintf('Active-Nb rotamers: %d',rotamers(conditionIndexNb).sortedNb(aminoAcid))
sprintf('Active-Inactive delta: %d', results(conditionIndexActive).rotamers(aminoAcid))
sprintf('Active-Nanobody delta: %d', results(conditionIndexNb).rotamers(aminoAcid))
%% plot Nb-filtered results
figure(3)
xlim([1 350]);
bar(cwListNb(:,1),cwListNb(:,2),'k')
xlabel('residue number');
ylabel('delta rotamers');
title(results(resultsNumber).conditionName)
xlim([1 350]);
figure(4)
subplot(2,1,1)
xlim([1 350]);
bar(DEERListNb(:,1),DEERListNb(:,2),'k')
ylabel('delta rotamers');
subplot(2,1,2)
xlim([1 350]);
bar(results(resultsNumber).distanceca(:,1),results(resultsNumber).distanceca(:,2))
xlabel('residue number');
ylabel('distance threshold')
title(results(resultsNumber).conditionName)
%% overlay plot with distances

%% print table output
ConditionNames={'AA 327 MTSL cryo', 'MTSL ambient', 'Proxyl cryo', 'Proxyl ambient'};
    aminoAcid=327
    for i=1:4
        ActiveRotamers(i,1)=rotamers(i).sortedActive(aminoAcid);
        InactiveRotamers(i,1)=rotamers(i+4).sortedInactive(aminoAcid);
        NanobodyRotamers(i,1)=rotamers(i+8).sortedNb(aminoAcid);
    end
ActiveInactiveDelta=ActiveRotamers-InactiveRotamers;
ActiveNanobodyDelta=ActiveRotamers-NanobodyRotamers;
outputTable=table(ActiveRotamers, InactiveRotamers, NanobodyRotamers,ActiveInactiveDelta,ActiveNanobodyDelta,'RowNames',ConditionNames)
%
