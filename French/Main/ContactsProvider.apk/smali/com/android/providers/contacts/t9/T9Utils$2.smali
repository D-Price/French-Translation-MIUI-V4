.class final Lcom/android/providers/contacts/t9/T9Utils$2;
.super Lmiui/util/SimplePool$Manager;
.source "T9Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/T9Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SimplePool$Manager",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lmiui/util/SimplePool$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9Utils$2;->createInstance()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/t9/T9Utils$2;->onRelease(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public onRelease(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    return-void
.end method
