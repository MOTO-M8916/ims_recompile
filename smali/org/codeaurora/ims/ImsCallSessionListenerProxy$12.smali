.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$session:Landroid/telephony/ims/internal/IImsCallSession;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
    .param p2, "val$session"    # Landroid/telephony/ims/internal/IImsCallSession;
    .param p3, "val$reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->val$session:Landroid/telephony/ims/internal/IImsCallSession;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->val$session:Landroid/telephony/ims/internal/IImsCallSession;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v1, v2, v3}, Landroid/telephony/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "onCallSessionResumeFailed()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->-wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
