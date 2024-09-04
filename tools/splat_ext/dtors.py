from splat.segtypes.common.data import CommonSegData
from splat.util import options


class N64SegDtors(CommonSegData):
    def get_linker_section(self):
        return ".dtors"
