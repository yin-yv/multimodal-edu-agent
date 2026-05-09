"""Agent 基类"""

class AgentBase:
    def __init__(self, config):
        self.config = config

    async def process(self, data):
        raise NotImplementedError
