(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "4") (re.* (re.* (str.to_re "53"))))))

(assert (< (str.to_int x) 54))
(assert (> (* 10 (str.to_int x)) 15))
(assert (> (+ (* 6 (str.len x)) (* (- 9) (str.to_int x))) 67))
(assert (<= (* 5 (str.to_int x)) 37))

(check-sat)