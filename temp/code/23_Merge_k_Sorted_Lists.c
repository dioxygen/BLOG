#include <stdio.h>

struct ListNode {
    int val;
    struct ListNode *next;
};

struct ListNode* mergeKLists(struct ListNode** lists, int listsSize){
    int i;
    struct ListNode * head,* rear;
    head=rear= NULL;
    while(i=findmin(lists,listsSize)!=-1){
        if(head==NULL)
            head=rear=lists[i];
        else
            rear->next=lists[i];
        if(lists[i]!=NULL)
            lists[i]=lists[i]->next;
    }
    return head;
}

int findmin(struct ListNode** lists, int listsSize){
    int i;
    int res;
    
    for(res=0;i<listsSize&&lists[res]==NULL;res++){
        if(res==listsSize)
            return -1;
    }
    for(i=res+1;i<listsSize;i++){
        if(lists[i]!=NULL && (lists[i]->val)<(lists[res]->val))

            res=i;
    }
    return res;
}

int main(){
    
}