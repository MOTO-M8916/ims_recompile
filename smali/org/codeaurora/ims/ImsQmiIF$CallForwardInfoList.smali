.class public final Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardInfoList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    }
.end annotation


# static fields
.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x3

.field public static final INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private hasErrorDetails:Z

.field private info_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5700
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6015
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6014
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 6048
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 6087
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 5700
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6151
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6145
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    return-object v0
.end method


# virtual methods
.method public addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .prologue
    .line 6031
    if-nez p1, :cond_0

    .line 6032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6034
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 6037
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6038
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1

    .prologue
    .line 6066
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->clearInfo()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 6067
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 6068
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 6069
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1

    .prologue
    .line 6060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->hasErrorDetails:Z

    .line 6061
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 6062
    return-object p0
.end method

.method public clearInfo()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1

    .prologue
    .line 6041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 6042
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6090
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    if-gez v0, :cond_0

    .line 6092
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getSerializedSize()I

    .line 6094
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 6050
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6021
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    return-object v0
.end method

.method public getInfoCount()I
    .locals 1

    .prologue
    .line 6019
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6017
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6099
    const/4 v2, 0x0

    .line 6100
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 6102
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    .line 6101
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6104
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->hasErrorDetails()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6106
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    const/4 v4, 0x3

    .line 6105
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6108
    :cond_1
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 6109
    return v2
.end method

.method public hasErrorDetails()Z
    .locals 1

    .prologue
    .line 6049
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->hasErrorDetails:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6073
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
    .line 6113
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6118
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6122
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6123
    return-object p0

    .line 6120
    :sswitch_0
    return-object p0

    .line 6128
    :sswitch_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 6129
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6130
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    goto :goto_0

    .line 6134
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    :sswitch_2
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 6135
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6136
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    goto :goto_0

    .line 6118
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .prologue
    .line 6052
    if-nez p1, :cond_0

    .line 6053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6055
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->hasErrorDetails:Z

    .line 6056
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 6057
    return-object p0
.end method

.method public setInfo(ILorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .prologue
    .line 6024
    if-nez p2, :cond_0

    .line 6025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6027
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6028
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
    .line 6079
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 6080
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 6082
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->hasErrorDetails()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6083
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6078
    :cond_1
    return-void
.end method
