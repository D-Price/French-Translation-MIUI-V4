.class public Lcom/android/providers/contacts/t9/T9CallLogItem;
.super Ljava/lang/Object;
.source "T9CallLogItem.java"


# instance fields
.field public mDate:J

.field public mDuration:J

.field public mFirewallType:I

.field public mId:J

.field public mIsForwarded:Z

.field public mItem:Lcom/android/providers/contacts/t9/T9Item;

.field public mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

.field public mNormalizedNumber:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

.field public mType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IJJZILcom/android/providers/contacts/t9/T9Item;)V
    .locals 0
    .parameter "id"
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "type"
    .parameter "duration"
    .parameter "date"
    .parameter "isForwarded"
    .parameter "firewallType"
    .parameter "item"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mId:J

    .line 28
    iput-object p3, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    .line 31
    iput-wide p6, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDuration:J

    .line 32
    iput-wide p8, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    .line 33
    iput-boolean p10, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mIsForwarded:Z

    .line 34
    iput p11, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mFirewallType:I

    .line 35
    iput-object p12, p0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 36
    return-void
.end method
