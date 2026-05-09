"""通用平台适配器"""
from abc import ABC, abstractmethod

class UniversalAdapter(ABC):
    @abstractmethod
    async def extract_content(self, url):
        pass
