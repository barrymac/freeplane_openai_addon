# LLM plugin for freeplane
1. Implement open router api

```curl https://openrouter.ai/api/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -d '{
  "model": "openai/gpt-4o",
  "messages": [
    {
      "role": "user",
      "content": "What is the meaning of life?"
    }
  ]
}'
```

2. Multi model support via open router api, configured in the plugin config  

3. Comparative link Vectors
Examples:
   a. Pros and cons between two adjacent branches.
   b. Link to other branch , compare and contrast
   c. Left wing  right wing  political bias

Optimistic or pessimistic

4. Compare Model outputs
5. Serial thought Vectors
6. Prompt refresh sub tree
