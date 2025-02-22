declare module 'dify-client' {
    export class ChatClient {
        constructor(apiKey: string, baseUrl: string)
        createChatMessage(
            inputs: any,
            query: string,
            user: string,
            responseMode: string,
            conversationId?: string,
            files?: any[],
            code?: string
        ): Promise<any>
        // ... 其他方法
    }
} 