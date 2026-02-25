(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "1"))) (re.* (str.to_re "689")))))

(assert (= (* 3 (str.to_int x)) 88))
(assert (< (str.len x) 12))
(assert (> (* (- 4) (str.len x)) 19))
(assert (> (str.len x) 88))

(check-sat)