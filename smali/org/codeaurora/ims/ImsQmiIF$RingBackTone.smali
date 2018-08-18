.class public final Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingBackTone"
.end annotation


# static fields
.field public static final FLAG_FIELD_NUMBER:I = 0x1

.field public static final START:I = 0x1

.field public static final STOP:I


# instance fields
.field private cachedSize:I

.field private flag_:I

.field private hasFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4138
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4147
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 4179
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 4138
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4231
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4225
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    .line 4162
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    .line 4163
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 4164
    return-object p0
.end method

.method public clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4156
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 4157
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 4158
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4182
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    if-gez v0, :cond_0

    .line 4184
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getSerializedSize()I

    .line 4186
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 4149
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4191
    const/4 v0, 0x0

    .line 4192
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4194
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    .line 4193
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4196
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 4197
    return v0
.end method

.method public hasFlag()Z
    .locals 1

    .prologue
    .line 4148
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4168
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
    .line 4201
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4206
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4210
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4211
    return-object p0

    .line 4208
    :sswitch_0
    return-object p0

    .line 4216
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    goto :goto_0

    .line 4206
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 4152
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 4153
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
    .line 4174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4175
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4173
    :cond_0
    return-void
.end method
