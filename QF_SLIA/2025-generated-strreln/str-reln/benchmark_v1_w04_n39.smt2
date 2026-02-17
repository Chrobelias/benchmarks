(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "674") (re.++ (re.* (re.+ (str.to_re "72"))) (str.to_re "24")))))

(assert (< (* (- 5) (str.len x)) 54))
(assert (>= (* 4 (str.len x)) 58))
(assert (> (* 8 (str.to_int x)) 20))
(assert (< (* 4 (str.to_int x)) 38))

(check-sat)