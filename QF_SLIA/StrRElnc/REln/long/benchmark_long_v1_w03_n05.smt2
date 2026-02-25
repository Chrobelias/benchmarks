(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "673") (re.+ (str.to_re "1")))))))

(assert (= (* 6 (str.to_int x)) 56))
(assert (< (* (- 2) (str.len x)) 80))
(assert (< (* (- 5) (str.len x)) 16))

(check-sat)