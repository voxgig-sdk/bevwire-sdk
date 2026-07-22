# Bevwire SDK utility: make_context

from core.context import BevwireContext


def make_context_util(ctxmap, basectx):
    return BevwireContext(ctxmap, basectx)
