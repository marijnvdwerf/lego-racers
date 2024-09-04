from splat.segtypes.common.data import CommonSegData
from splat.util import options


class N64SegCtors(CommonSegData):
    def get_linker_section(self):
        return ".ctors"
