(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "197")) (str.to_re "114"))))

(assert (> (* 3 (str.len x)) 79))
(assert (< (+ (* (- 3) (str.len x)) (* 2 (str.to_int x))) 6))
(assert (< (* (- 2) (str.to_int x)) 22))
(assert (> (* 5 (str.to_int x)) 6))

(check-sat)