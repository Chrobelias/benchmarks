(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.+ (re.+ (re.range "6" "8"))))))

(assert (< (* (- 7) (str.len x)) 76))
(assert (= (+ (- (str.len x)) (* (- 5) (str.to_int x))) 22))
(assert (<= (* 5 (str.to_int x)) 15))
(assert (>= (* 5 (str.to_int x)) 12))

(check-sat)