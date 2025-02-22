'use client'

import { useEffect, useState } from 'react'
import { useSearchParams } from 'next/navigation'

export const useCodeParam = () => {
    const [code, setCode] = useState<string>('')
    const searchParams = useSearchParams()

    useEffect(() => {
        const codeParam = searchParams?.get('code')
        if (codeParam)
            setCode(codeParam)
    }, [searchParams])

    return code
} 