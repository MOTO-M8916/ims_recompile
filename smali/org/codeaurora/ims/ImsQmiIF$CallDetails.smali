.class public final Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallDetails"
.end annotation


# static fields
.field public static final CALLDOMAIN_FIELD_NUMBER:I = 0x2

.field public static final CALLSUBSTATE_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x1

.field public static final CAUSECODE_FIELD_NUMBER:I = 0x9

.field public static final EXTRASLENGTH_FIELD_NUMBER:I = 0x3

.field public static final EXTRAS_FIELD_NUMBER:I = 0x4

.field public static final LOCALABILITY_FIELD_NUMBER:I = 0x5

.field public static final MEDIAID_FIELD_NUMBER:I = 0x8

.field public static final PEERABILITY_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private callDomain_:I

.field private callSubstate_:I

.field private callType_:I

.field private causeCode_:I

.field private extrasLength_:I

.field private extras_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCallDomain:Z

.field private hasCallSubstate:Z

.field private hasCallType:Z

.field private hasCauseCode:Z

.field private hasExtrasLength:Z

.field private hasLocalAbility:Z

.field private hasMediaId:Z

.field private hasPeerAbility:Z

.field private localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

.field private mediaId_:I

.field private peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1420
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1425
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1442
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1459
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1475
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1509
    iput-object v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1529
    iput-object v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1549
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1566
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1583
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1647
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1420
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1766
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method


# virtual methods
.method public addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1492
    if-nez p1, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1495
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1498
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1599
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1600
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1601
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1602
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1603
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1604
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1605
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1606
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCauseCode()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1607
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1608
    return-object p0
.end method

.method public clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1451
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1452
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1453
    return-object p0
.end method

.method public clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1558
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1559
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1560
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1434
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1435
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1436
    return-object p0
.end method

.method public clearCauseCode()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1592
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    .line 1593
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1594
    return-object p0
.end method

.method public clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1503
    return-object p0
.end method

.method public clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1468
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1469
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1470
    return-object p0
.end method

.method public clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1522
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1523
    return-object p0
.end method

.method public clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1576
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1577
    return-object p0
.end method

.method public clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1542
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1543
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getSerializedSize()I

    .line 1654
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    return v0
.end method

.method public getCallDomain()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    return v0
.end method

.method public getCauseCode()I
    .locals 1

    .prologue
    .line 1585
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    return v0
.end method

.method public getExtras(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1482
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasLength()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    return v0
.end method

.method public getExtrasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getMediaId()I
    .locals 1

    .prologue
    .line 1567
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    return v0
.end method

.method public getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1659
    const/4 v3, 0x0

    .line 1660
    .local v3, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1662
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v4

    .line 1661
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    .line 1664
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1666
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v4

    const/4 v5, 0x2

    .line 1665
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1668
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v4

    const/4 v5, 0x3

    .line 1669
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1673
    :cond_2
    const/4 v0, 0x0

    .line 1674
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1675
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1678
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 1679
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1681
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1683
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v4

    const/4 v5, 0x5

    .line 1682
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1685
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1687
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v4

    const/4 v5, 0x6

    .line 1686
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1689
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1691
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v4

    const/4 v5, 0x7

    .line 1690
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1693
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1695
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v4

    const/16 v5, 0x8

    .line 1694
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1697
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v4

    const/16 v5, 0x9

    .line 1698
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1701
    :cond_8
    iput v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1702
    return v3
.end method

.method public hasCallDomain()Z
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    return v0
.end method

.method public hasCallSubstate()Z
    .locals 1

    .prologue
    .line 1550
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    return v0
.end method

.method public hasCauseCode()Z
    .locals 1

    .prologue
    .line 1584
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    return v0
.end method

.method public hasExtrasLength()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    return v0
.end method

.method public hasLocalAbility()Z
    .locals 1

    .prologue
    .line 1510
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    return v0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    return v0
.end method

.method public hasPeerAbility()Z
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1710
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1711
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1715
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    return-object p0

    .line 1713
    :sswitch_0
    return-object p0

    .line 1721
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1725
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1729
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1733
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1737
    :sswitch_5
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1738
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1739
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1743
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :sswitch_6
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1744
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1745
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1749
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1753
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1757
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCauseCode(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1711
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1447
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1448
    return-object p0
.end method

.method public setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1554
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1555
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1430
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1431
    return-object p0
.end method

.method public setCauseCode(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    .line 1588
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1589
    return-object p0
.end method

.method public setExtras(ILjava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1485
    if-nez p2, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1488
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-object p0
.end method

.method public setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1464
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1465
    return-object p0
.end method

.method public setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    .line 1513
    if-nez p1, :cond_0

    .line 1514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1516
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1517
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1518
    return-object p0
.end method

.method public setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1571
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1572
    return-object p0
.end method

.method public setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    .line 1533
    if-nez p1, :cond_0

    .line 1534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1536
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1537
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1538
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1619
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1622
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1624
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1625
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1627
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1628
    .local v0, "element":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1630
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1631
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1633
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1634
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1636
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1637
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1639
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1640
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 1642
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1643
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1617
    :cond_8
    return-void
.end method
