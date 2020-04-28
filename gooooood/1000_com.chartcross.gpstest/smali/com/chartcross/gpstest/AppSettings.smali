.class public Lcom/chartcross/gpstest/AppSettings;
.super Landroid/preference/PreferenceActivity;
.source "AppSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mClearAgpsClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDatumIndex:I

.field private mDatumListPreference:Landroid/preference/ListPreference;

.field private mDatums:[Ljava/lang/String;

.field private mGridIndex:I

.field private mGridListPreference:Landroid/preference/ListPreference;

.field private mGrids:[Ljava/lang/String;

.field private mPrecisionIndex:I

.field private mPrecisionListPreference:Landroid/preference/ListPreference;

.field private mPrecisions:[Ljava/lang/String;

.field private final mUpdateAgpsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/chartcross/gpstest/AppSettings$1;

    invoke-direct {v0, p0}, Lcom/chartcross/gpstest/AppSettings$1;-><init>(Lcom/chartcross/gpstest/AppSettings;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mClearAgpsClickListener:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcom/chartcross/gpstest/AppSettings$2;

    invoke-direct {v0, p0}, Lcom/chartcross/gpstest/AppSettings$2;-><init>(Lcom/chartcross/gpstest/AppSettings;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mUpdateAgpsClickListener:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/chartcross/gpstest/AppSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 218
    .local v19, "root":Landroid/preference/PreferenceScreen;
    new-instance v10, Landroid/preference/PreferenceCategory;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 219
    .local v10, "generalPrefCat":Landroid/preference/PreferenceCategory;
    const v24, 0x7f050008

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 220
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    new-instance v13, Landroid/preference/PreferenceCategory;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 226
    .local v13, "gridPrefCat":Landroid/preference/PreferenceCategory;
    const v24, 0x7f050009

    move-object v0, v13

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 227
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    new-instance v8, Landroid/preference/PreferenceCategory;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 233
    .local v8, "formatPrefCat":Landroid/preference/PreferenceCategory;
    const v24, 0x7f05000a

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 234
    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    new-instance v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 240
    .local v3, "backlightPref":Landroid/preference/CheckBoxPreference;
    const-string v24, "backlight"

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 241
    const-string v24, "Keep screen on"

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    const-string v24, "Stop the screen turning off when this application is active"

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v10, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    new-instance v9, Landroid/preference/CheckBoxPreference;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 249
    .local v9, "fullScreenPref":Landroid/preference/CheckBoxPreference;
    const-string v24, "fullscreen"

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 250
    const-string v24, "Hide the status bar"

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    const-string v24, "Put this application in full screen mode by hiding the status bar"

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    new-instance v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 258
    .local v21, "splashScreenPref":Landroid/preference/CheckBoxPreference;
    const-string v24, "hidesplash"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 259
    const-string v24, "Hide splash screen"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    const-string v24, "Do not show the splash screen when the app first starts"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    new-instance v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 267
    .local v17, "orientationPref":Landroid/preference/ListPreference;
    const v24, 0x7f04001b

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 268
    const v24, 0x7f04001c

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 269
    const-string v24, "Screen orientation"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 270
    const-string v24, "orientation"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 271
    const-string v24, "Screen orientation"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    const-string v24, "Choose the screen orientation"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 278
    new-instance v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 279
    .local v4, "colourPref":Landroid/preference/ListPreference;
    const v24, 0x7f040009

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 280
    const v24, 0x7f04000a

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 281
    const-string v24, "Colour schemes"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 282
    const-string v24, "colour_scheme"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 283
    const/16 v24, 0x1

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 284
    const-string v24, "Colour scheme"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    const-string v24, "Choose your preferred colour scheme"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v10, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 291
    new-instance v7, Landroid/preference/ListPreference;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 292
    .local v7, "fieldTextColourPref":Landroid/preference/ListPreference;
    const v24, 0x7f04000b

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 293
    const v24, 0x7f04000c

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 294
    const-string v24, "Field text colour"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 295
    const-string v24, "field_text_colour"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 296
    const/16 v24, 0x1

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 297
    const-string v24, "Field text colour"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    const-string v24, "Choose the field text colour"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 304
    new-instance v12, Landroid/preference/ListPreference;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 305
    .local v12, "gridPref":Landroid/preference/ListPreference;
    const v24, 0x7f040001

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 306
    const v24, 0x7f040002

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 307
    const-string v24, "Grids"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 308
    const-string v24, "grid"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 309
    const/16 v24, 0x1

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 310
    const-string v24, "Grid"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    new-instance v6, Landroid/preference/ListPreference;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 317
    .local v6, "datumPref":Landroid/preference/ListPreference;
    const v24, 0x7f040004

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 318
    const v24, 0x7f040005

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 319
    const-string v24, "Datum"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 320
    const-string v24, "datum"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 321
    const/16 v24, 0x1

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 322
    const-string v24, "Datum"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v13, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    new-instance v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 329
    .local v18, "precisionPref":Landroid/preference/ListPreference;
    const v24, 0x7f040007

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 330
    const v24, 0x7f040008

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 331
    const-string v24, "Precision"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 332
    const-string v24, "precision"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 333
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 334
    const-string v24, "Precision"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    new-instance v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 341
    .local v23, "timePref":Landroid/preference/ListPreference;
    const v24, 0x7f040017

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 342
    const v24, 0x7f040018

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 343
    const-string v24, "Time formats"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 344
    const-string v24, "time_format"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 345
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 346
    const-string v24, "Time format"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    const-string v24, "Choose a format to display time fields in"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    new-instance v5, Landroid/preference/ListPreference;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 354
    .local v5, "datePref":Landroid/preference/ListPreference;
    const v24, 0x7f040019

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 355
    const v24, 0x7f04001a

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 356
    const-string v24, "Date formats"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 357
    const-string v24, "date_format"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 358
    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 359
    const-string v24, "Date format"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    const-string v24, "Choose a format to display date fields in"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    new-instance v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 367
    .local v20, "speedUnitPref":Landroid/preference/ListPreference;
    const v24, 0x7f04000d

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 368
    const v24, 0x7f04000e

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 369
    const-string v24, "Speed units"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 370
    const-string v24, "speed_units"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 371
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 372
    const-string v24, "Speed units"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    const-string v24, "Choose the units for speed fields"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 379
    new-instance v2, Landroid/preference/ListPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 380
    .local v2, "altitudeUnitPref":Landroid/preference/ListPreference;
    const v24, 0x7f04000f

    move-object v0, v2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 381
    const v24, 0x7f040010

    move-object v0, v2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 382
    const-string v24, "Altitude units"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 383
    const-string v24, "altitude_units"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 384
    const/16 v24, 0x1

    move-object v0, v2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 385
    const-string v24, "Altitude units"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    const-string v24, "Choose the units for alititude and accuracy fields"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 392
    new-instance v15, Landroid/preference/ListPreference;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 393
    .local v15, "headingPref":Landroid/preference/ListPreference;
    const v24, 0x7f040011

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 394
    const v24, 0x7f040012

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 395
    const-string v24, "Heading units"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 396
    const-string v24, "heading_units"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 397
    const/16 v24, 0x1

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 398
    const-string v24, "Heading units"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    const-string v24, "Choose the units for compass and heading fields"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    new-instance v14, Landroid/preference/ListPreference;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 406
    .local v14, "headingDevPref":Landroid/preference/ListPreference;
    const v24, 0x7f040013

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 407
    const v24, 0x7f040014

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 408
    const-string v24, "Heading device"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 409
    const-string v24, "heading_device"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 410
    const/16 v24, 0x1

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 411
    const-string v24, "Heading device"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    const-string v24, "Choose the device to use for compass and heading fields"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    new-instance v16, Landroid/preference/ListPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 419
    .local v16, "northRefPref":Landroid/preference/ListPreference;
    const v24, 0x7f040015

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 420
    const v24, 0x7f040016

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 421
    const-string v24, "North reference"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 422
    const-string v24, "north_reference"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 423
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 424
    const-string v24, "North reference"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    const-string v24, "Choose the north reference to use for compass and heading fields"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    new-instance v11, Landroid/preference/CheckBoxPreference;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 432
    .local v11, "geoidPref":Landroid/preference/CheckBoxPreference;
    const-string v24, "usegeoid"

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 433
    const-string v24, "Adjust altitude"

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    const-string v24, "Apply the geoid value to the altitude"

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 440
    new-instance v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 441
    .local v22, "tenthsPref":Landroid/preference/CheckBoxPreference;
    const-string v24, "tenths"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 442
    const-string v24, "Show tenths"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    const-string v24, "Display speed to one decimal place"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    return-object v19
.end method


# virtual methods
.method SetSummaries(III)V
    .locals 6
    .param p1, "GridIndex"    # I
    .param p2, "DatumIndex"    # I
    .param p3, "PrecisionIndex"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mGridListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mGrids:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 200
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 206
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 188
    :pswitch_5
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 194
    :pswitch_6
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/chartcross/gpstest/AppSettings;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/chartcross/gpstest/AppSettings;->mGrids:[Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/chartcross/gpstest/AppSettings;->mDatums:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisions:[Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/chartcross/gpstest/AppSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/chartcross/gpstest/AppSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 73
    iput-object p0, p0, Lcom/chartcross/gpstest/AppSettings;->mContext:Landroid/content/Context;

    .line 75
    const v5, 0x7f060001

    invoke-virtual {p0, v5}, Lcom/chartcross/gpstest/AppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    .local v1, "clearAgpsButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/chartcross/gpstest/AppSettings;->mClearAgpsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v5, 0x7f060002

    invoke-virtual {p0, v5}, Lcom/chartcross/gpstest/AppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 78
    .local v3, "updateAgpsButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/chartcross/gpstest/AppSettings;->mUpdateAgpsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v5, "fullscreen"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, "FullScreen":Z
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 83
    .local v4, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/16 v5, -0x401

    invoke-virtual {v4, v5, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "grid"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mGridListPreference:Landroid/preference/ListPreference;

    .line 103
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "datum"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumListPreference:Landroid/preference/ListPreference;

    .line 104
    invoke-virtual {p0}, Lcom/chartcross/gpstest/AppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "precision"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionListPreference:Landroid/preference/ListPreference;

    .line 105
    const-string v1, "grid"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    .line 106
    const-string v1, "datum"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    .line 107
    const-string v1, "precision"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    .line 108
    iget v1, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    iget v2, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    iget v3, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/chartcross/gpstest/AppSettings;->SetSummaries(III)V

    .line 113
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, "grid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    .line 132
    iget v0, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    iget v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    iget v2, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/chartcross/gpstest/AppSettings;->SetSummaries(III)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "datum"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    .line 137
    iget v0, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    iget v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    iget v2, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/chartcross/gpstest/AppSettings;->SetSummaries(III)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v0, "precision"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    .line 142
    iget v0, p0, Lcom/chartcross/gpstest/AppSettings;->mGridIndex:I

    iget v1, p0, Lcom/chartcross/gpstest/AppSettings;->mDatumIndex:I

    iget v2, p0, Lcom/chartcross/gpstest/AppSettings;->mPrecisionIndex:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/chartcross/gpstest/AppSettings;->SetSummaries(III)V

    goto :goto_0
.end method
