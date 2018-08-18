.class public final Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoLocationInfo"
.end annotation


# static fields
.field public static final ADDRESSINFO_FIELD_NUMBER:I = 0x3

.field public static final LAT_FIELD_NUMBER:I = 0x1

.field public static final LON_FIELD_NUMBER:I = 0x2


# instance fields
.field private addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

.field private cachedSize:I

.field private hasAddressInfo:Z

.field private hasLat:Z

.field private hasLon:Z

.field private lat_:D

.field private lon_:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 8848
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8853
    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    .line 8870
    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    .line 8887
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 8930
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    .line 8848
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9000
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8994
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    .prologue
    .line 8905
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearLat()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 8906
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearLon()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 8907
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 8908
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    .line 8909
    return-object p0
.end method

.method public clearAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    .prologue
    .line 8899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    .line 8900
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 8901
    return-object p0
.end method

.method public clearLat()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 2

    .prologue
    .line 8862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    .line 8863
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    .line 8864
    return-object p0
.end method

.method public clearLon()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 2

    .prologue
    .line 8879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    .line 8880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    .line 8881
    return-object p0
.end method

.method public getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .prologue
    .line 8889
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8933
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 8935
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getSerializedSize()I

    .line 8937
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    return v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 8854
    iget-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 8871
    iget-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 8942
    const/4 v0, 0x0

    .line 8943
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8945
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v2

    const/4 v1, 0x1

    .line 8944
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8947
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8949
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v2

    const/4 v1, 0x2

    .line 8948
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8951
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8953
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 8952
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8955
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    .line 8956
    return v0
.end method

.method public hasAddressInfo()Z
    .locals 1

    .prologue
    .line 8888
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    return v0
.end method

.method public hasLat()Z
    .locals 1

    .prologue
    .line 8855
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    return v0
.end method

.method public hasLon()Z
    .locals 1

    .prologue
    .line 8872
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8913
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
    .line 8960
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8964
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8965
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8969
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8970
    return-object p0

    .line 8967
    :sswitch_0
    return-object p0

    .line 8975
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    .line 8979
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    .line 8983
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    .line 8984
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8985
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    .line 8965
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .prologue
    .line 8891
    if-nez p1, :cond_0

    .line 8892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8894
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    .line 8895
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 8896
    return-object p0
.end method

.method public setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 8857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    .line 8858
    iput-wide p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    .line 8859
    return-object p0
.end method

.method public setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 8874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    .line 8875
    iput-wide p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    .line 8876
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8919
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8920
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 8922
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8923
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 8925
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8926
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8918
    :cond_2
    return-void
.end method
