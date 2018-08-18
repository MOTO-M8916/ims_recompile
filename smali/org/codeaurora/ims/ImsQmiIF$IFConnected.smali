.class public final Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IFConnected"
.end annotation


# static fields
.field public static final IF_VERSION_FIELD_NUMBER:I = 0x1

.field public static final VERSION_0:I


# instance fields
.field private cachedSize:I

.field private hasIfVersion:Z

.field private ifVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4239
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4247
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->ifVersion_:I

    .line 4279
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->cachedSize:I

    .line 4239
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4331
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4325
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 1

    .prologue
    .line 4262
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->clearIfVersion()Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    .line 4263
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->cachedSize:I

    .line 4264
    return-object p0
.end method

.method public clearIfVersion()Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4256
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->hasIfVersion:Z

    .line 4257
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->ifVersion_:I

    .line 4258
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4282
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->cachedSize:I

    if-gez v0, :cond_0

    .line 4284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->getSerializedSize()I

    .line 4286
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->cachedSize:I

    return v0
.end method

.method public getIfVersion()I
    .locals 1

    .prologue
    .line 4249
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->ifVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4291
    const/4 v0, 0x0

    .line 4292
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->hasIfVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4294
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->getIfVersion()I

    move-result v1

    const/4 v2, 0x1

    .line 4293
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4296
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->cachedSize:I

    .line 4297
    return v0
.end method

.method public hasIfVersion()Z
    .locals 1

    .prologue
    .line 4248
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->hasIfVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4268
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
    .line 4301
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4306
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4310
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4311
    return-object p0

    .line 4308
    :sswitch_0
    return-object p0

    .line 4316
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->setIfVersion(I)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;

    goto :goto_0

    .line 4306
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIfVersion(I)Lorg/codeaurora/ims/ImsQmiIF$IFConnected;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->hasIfVersion:Z

    .line 4252
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->ifVersion_:I

    .line 4253
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4274
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->hasIfVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4275
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$IFConnected;->getIfVersion()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4273
    :cond_0
    return-void
.end method
