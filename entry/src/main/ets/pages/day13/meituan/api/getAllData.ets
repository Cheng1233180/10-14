import { http } from '@kit.NetworkKit'
import { Category } from '../models/Category'

export const getData=async ()=>{
  const req=http.createHttp()
  const res=await req.request('https://zhousg.atomgit.net/harmonyos-next/takeaway.json')
  return JSON.parse(res.result as string)as Category[]
}