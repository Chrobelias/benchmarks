(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (str.to_re "370") (re.+ (str.to_re "19"))) (re.* (re.range "6" "9")))))

(assert (< (* 5 (str.to_int x)) 19))
(assert (<= (* 4 (str.len x)) 90))
(assert (> (* (- 9) (str.to_int x)) 76))
(assert (<= (- (str.to_int x)) 13))
(assert (<= (* (- 6) (str.len x)) 97))

(check-sat)