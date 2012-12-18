.class public Lcom/android/providers/downloads/ui/MiuiPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/MiuiPushReceiver$1;,
        Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    }
.end annotation


# static fields
.field private static final DEF_DESTINATION:Ljava/lang/String;

.field private static final MUSIC_DESTINATION:Ljava/lang/String;

.field private static final THEME_DESTINATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->DEF_DESTINATION:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->THEME_DESTINATION:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/music/mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->MUSIC_DESTINATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 142
    return-void
.end method

.method private static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "ele"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 181
    if-nez p0, :cond_0

    move-object v1, v3

    .line 193
    :goto_0
    return-object v1

    .line 185
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 186
    .local v2, nl:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 187
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 188
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v3

    .line 193
    goto :goto_0
.end method

.method private getDestDirAccortdingToExt(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, destDir:Ljava/lang/String;
    const-string v3, ".mtz"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    sget-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->THEME_DESTINATION:Ljava/lang/String;

    .line 237
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 228
    :cond_0
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, fileType:I
    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    sget-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->MUSIC_DESTINATION:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    sget-object v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->DEF_DESTINATION:Ljava/lang/String;

    goto :goto_0
.end method

.method private getItem(Ljava/lang/String;)Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    .locals 10
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    .line 154
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 157
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 158
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 159
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 160
    .local v6, root:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Download"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 161
    const-string v8, "item"

    invoke-static {v6, v8}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 162
    .local v4, item:Lorg/w3c/dom/Element;
    new-instance v5, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;-><init>(Lcom/android/providers/downloads/ui/MiuiPushReceiver;Lcom/android/providers/downloads/ui/MiuiPushReceiver$1;)V

    .line 163
    .local v5, ret:Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    const-string v8, "url"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v5, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mUri:Landroid/net/Uri;

    .line 164
    const-string v8, "name"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 177
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #item:Lorg/w3c/dom/Element;
    .end local v5           #ret:Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    .end local v6           #root:Lorg/w3c/dom/Element;
    :goto_0
    return-object v5

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_1
    move-object v5, v7

    .line 177
    goto :goto_0

    .line 169
    :catch_1
    move-exception v3

    .line 170
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 172
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 174
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 148
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOpenDownloadIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "localUri"
    .parameter "mediaType"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const v1, 0x10000001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method private getShowFailureListIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    return-object v0
.end method

.method private showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "title"
    .parameter "body"
    .parameter "notificationId"
    .parameter "drawableId"

    .prologue
    .line 197
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p6, p4, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 198
    .local v2, notification:Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 199
    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 200
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 201
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p1, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 202
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 203
    .local v1, manager:Landroid/app/NotificationManager;
    invoke-virtual {v1, p5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ACTION_MIUI_PUSH"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    const-string v3, "payload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 49
    .local v25, payload:Ljava/lang/String;
    :try_start_0
    const-string v3, "utf-8"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 53
    :goto_0
    const-string v3, "MiuiPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received ACTION_MIUI_PUSH\npayload:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v3, "download"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/DownloadManager;

    .line 55
    .local v22, manager:Landroid/app/DownloadManager;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getItem(Ljava/lang/String;)Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;

    move-result-object v19

    .line 56
    .local v19, item:Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    if-eqz v19, :cond_2

    .line 57
    const-string v3, "MiuiPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v26, Landroid/app/DownloadManager$Request;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 59
    .local v26, request:Landroid/app/DownloadManager$Request;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 60
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 61
    .local v24, mime:Ljava/lang/String;
    if-eqz v24, :cond_0

    .line 62
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 64
    :cond_0
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 65
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 66
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 68
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getDestDirAccortdingToExt(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 69
    .local v14, destDir:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->mFileName:Ljava/lang/String;

    invoke-direct {v15, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v15, destFile:Ljava/io/File;
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 76
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 140
    .end local v14           #destDir:Ljava/io/File;
    .end local v15           #destFile:Ljava/io/File;
    .end local v19           #item:Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
    .end local v22           #manager:Landroid/app/DownloadManager;
    .end local v24           #mime:Ljava/lang/String;
    .end local v25           #payload:Ljava/lang/String;
    .end local v26           #request:Landroid/app/DownloadManager$Request;
    :cond_2
    :goto_1
    return-void

    .line 50
    .restart local v25       #payload:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 51
    .local v18, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 78
    .end local v18           #e:Ljava/io/UnsupportedEncodingException;
    .end local v25           #payload:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "extra_download_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 80
    .local v16, downloadId:J
    const-wide/16 v5, -0x1

    cmp-long v3, v16, v5

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 85
    .local v4, dataUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "title"

    aput-object v10, v5, v6

    const/4 v6, 0x1

    const-string v10, "mimetype"

    aput-object v10, v5, v6

    const/4 v6, 0x2

    const-string v10, "status"

    aput-object v10, v5, v6

    const/4 v6, 0x3

    const-string v10, "_data"

    aput-object v10, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 96
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 100
    const/4 v8, 0x0

    .line 101
    .local v8, title:Ljava/lang/String;
    const/16 v23, 0x0

    .line 102
    .local v23, mediaType:Ljava/lang/String;
    const/16 v27, 0x1eb

    .line 103
    .local v27, status:I
    const/16 v20, 0x0

    .line 105
    .local v20, localFile:Ljava/io/File;
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 108
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 109
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 110
    .local v21, localPath:Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 111
    new-instance v20, Ljava/io/File;

    .end local v20           #localFile:Ljava/io/File;
    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v21           #localPath:Ljava/lang/String;
    .restart local v20       #localFile:Ljava/io/File;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 118
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 119
    :cond_5
    const-string v3, "MiuiPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v27, 0x1ec

    .line 123
    :cond_6
    const-string v3, "MiuiPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mediaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, viewIntent:Landroid/content/Intent;
    const-string v9, ""

    .line 126
    .local v9, body:Ljava/lang/String;
    const/4 v11, -0x1

    .line 127
    .local v11, drawableId:I
    const/16 v3, 0xc8

    move/from16 v0, v27

    if-ne v0, v3, :cond_7

    .line 128
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getOpenDownloadIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 129
    const v3, 0x7f09000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    const v11, 0x1080082

    .line 136
    :goto_2
    move-wide/from16 v0, v16

    long-to-int v10, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 115
    .end local v7           #viewIntent:Landroid/content/Intent;
    .end local v9           #body:Ljava/lang/String;
    .end local v11           #drawableId:I
    .end local v20           #localFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 132
    .restart local v7       #viewIntent:Landroid/content/Intent;
    .restart local v9       #body:Ljava/lang/String;
    .restart local v11       #drawableId:I
    .restart local v20       #localFile:Ljava/io/File;
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/downloads/ui/MiuiPushReceiver;->getShowFailureListIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 133
    const v3, 0x7f09000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    const v11, 0x1080082

    goto :goto_2
.end method
