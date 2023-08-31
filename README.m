import openai

openai.api_key = "YOUR_API_KEY"

def generate_monokuma_response(user_input):
    prompt = f"Monokuma: {user_input}\nAI:"
    response = openai.Completion.create(
        engine="davinci",  # or another available engine
        prompt=prompt,
        max_tokens=50,
        temperature=0.7,
    )
    return response.choices[0].text.strip()

# Main loop for interaction
print("Monokuma AI: Greetings, dear user! What queries lie within your digital soul?")
while True:
    user_input = input("You: ")
    if user_input.lower() == "exit":
        print("Monokuma AI: Farewell, my enigmatic interlocutor!")
        break
    else:
        ai_response = generate_monokuma_response(user_input)
        print("Monokuma AI:", ai_response)
