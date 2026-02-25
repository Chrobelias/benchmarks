(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "271"))) (re.+ (str.to_re "963")))))

(assert (<= (+ (* 5 (str.len x)) (* 2 (str.to_int x))) 51))
(assert (<= (* 3 (str.len x)) 87))
(assert (> (+ (str.len x) (* (- 10) (str.to_int x))) 99))

(check-sat)