.class Lcom/android/providers/contacts/T9SearchSupport$1;
.super Ljava/lang/Thread;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/T9SearchSupport;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 211
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/providers/contacts/T9SearchSupport$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, timeStart:J
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    monitor-enter v3

    .line 216
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$100(Lcom/android/providers/contacts/T9SearchSupport;)Lcom/android/providers/contacts/t9/T9Depot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Depot;->load()V

    .line 218
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$200(Lcom/android/providers/contacts/T9SearchSupport;)Lcom/android/providers/contacts/t9/T9CallLogDepot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->load()V

    .line 219
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    const/4 v4, 0x1

    #setter for: Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z
    invoke-static {v2, v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$002(Lcom/android/providers/contacts/T9SearchSupport;Z)Z

    .line 220
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 222
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const-string v2, "load t9 search indexes"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 225
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/providers/contacts/T9SearchSupport$1;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$100(Lcom/android/providers/contacts/T9SearchSupport;)Lcom/android/providers/contacts/t9/T9Depot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Depot;->sortResults()V

    .line 229
    return-void

    .line 222
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 212
    .end local v0           #timeStart:J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 226
    .restart local v0       #timeStart:J
    :catch_1
    move-exception v2

    goto :goto_1
.end method
