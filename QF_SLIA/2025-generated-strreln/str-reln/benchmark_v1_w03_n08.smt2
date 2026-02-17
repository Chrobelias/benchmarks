(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (re.+ (re.range "3" "7"))) (re.range "0" "5")))))

(assert (< (- (str.to_int x)) 76))
(assert (<= (+ (- (str.len x)) (* 5 (str.to_int x))) 32))

(check-sat)