(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (re.* (str.to_re "786"))) (str.to_re "80")))))

(assert (< (* 10 (str.to_int x)) 19))
(assert (> (str.len x) 43))

(check-sat)