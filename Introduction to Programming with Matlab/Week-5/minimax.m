function [mmr,mmm] = minimax(M)

mmr = max(M')-min(M');
mmm = max(M(:)) - min(M(:));

end